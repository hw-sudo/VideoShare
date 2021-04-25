package com.cdu.videoshare.web;

import com.cdu.videoshare.entity.*;
import com.cdu.videoshare.service.CategoryService;
import com.cdu.videoshare.service.CommentService;
import com.cdu.videoshare.service.VideoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.UUID;


@Controller
@RequestMapping("video")
public class VideoController {

    //private static final java.util.UUID UUID = ;
    @Autowired
    private VideoService videoService;

    @Autowired
    private CategoryService categoryService;

    @GetMapping("list")
    public String list(Integer pageNum,VideoQueryCondition condition, Model model){
        model.addAttribute("pageInfo",videoService.getAll(pageNum==null?1:pageNum,condition));
        //查询所有类别
        model.addAttribute("categories",categoryService.getAll());
        model.addAttribute("condition",condition);
        return "admin/video_list";
    }

    @GetMapping("view/{id}")
    public String view(@PathVariable int id,Model model,HttpSession session){
        View view=new View();
        session.setAttribute("video_id",id);
        view.setUser_id((int)session.getAttribute("user_id"));
        view.setVideo_id(id);
        Date date=new Date();
        view.setView_time(date);
        videoService.addView(view);
        videoService.updateViewNum(id,1);
        System.out.println("记录观看历史成功");
        model.addAttribute("comments",commentService.getByVideoId(id));
        model.addAttribute("video",videoService.getById(id));
        return "view";
    }

    @GetMapping("add")
    public String add(){
        //查询所有的类别并保存
        return "home/video_update";
    }

    @PostMapping("add")
    public String add(MultipartFile vcover, MultipartFile video,String title,HttpSession session,Model model) {
        //文件要上传
        String fileName = vcover.getOriginalFilename();//上传的文件的名
        String suffix = fileName.substring(fileName.lastIndexOf(".")); //文件后缀
        String newFileName = UUID.randomUUID().toString().replace("-", "") + suffix;
        File file = new File("D:/vsfile/" + newFileName);
        try {
            vcover.transferTo(file);  //将文件保存到服务器上指定的位置
        } catch (IOException e) {
            e.printStackTrace();
        }

        String fileName2 = video.getOriginalFilename();//上传的文件的名
        String suffix2 = fileName2.substring(fileName2.lastIndexOf(".")); //文件后缀
        String newFileName2 = UUID.randomUUID().toString().replace("-", "") + suffix2;
        File file2 = new File("D:/vsfile/" + newFileName2);
        System.out.println("看看是否运行");
        try {
            video.transferTo(file2);  //将文件保存到服务器上指定的位置;
        } catch (IOException e) {
            e.printStackTrace();
        }

        Video video1=new Video();

        video1.setCover(newFileName);
        //数据增加到表中
        Category category=new Category();
        category.setId(3);
        video1.setCategory(category);
        User user=new User();
        user.setId((int)session.getAttribute("user_id"));
        video1.setUser(user);
        video1.setTitle(title);
        video1.setUrl(newFileName2);
        video1.setPubTime("2020-01-01");
        video1.setStatus("y");
        videoService.add(video1);
        model.addAttribute("msg","已存在收藏列表");
        model.addAttribute("videos",videoService.getVideoByUserId((int)session.getAttribute("user_id")));
        return "home/my_video";
    }

    @GetMapping("getView")
    public String getView(HttpSession session,Model model){
        int id = (int)session.getAttribute("user_id");
        model.addAttribute("views",videoService.getViewByUserId(id));
        return "home/my_view";
    }

    @GetMapping("getMyVideo")
    public String getMyVideo(HttpSession session,Model model){
        int id = (int)session.getAttribute("user_id");
        model.addAttribute("videos",videoService.getVideoByUserId(id));
        return "home/my_video";
    }

    @GetMapping("index")
    public String index(HttpSession session,Model model){
        int id = (int)session.getAttribute("user_id");
        model.addAttribute("videos",videoService.getVideoByUserId(id));
        return "index";
    }

    @Autowired
    private CommentService commentService;

    @GetMapping("comment/{id}")
    public String add(@PathVariable int id,String comment1,Model model,HttpSession session){

        Comment comment=new Comment();
        comment.setUser_id((int)session.getAttribute("user_id"));
        comment.setVideo_id(id);
        comment.setComment(comment1);
        Date date=new Date();
        comment.setComment_time(date);
        commentService.add(comment);
        System.out.println("添加评论 视频ID：" + id);
        model.addAttribute("comments",commentService.getByVideoId(id));
        model.addAttribute("video",videoService.getById(id));
        return "video/comment";
    }


}
