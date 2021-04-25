package com.cdu.videoshare.web;


import com.cdu.videoshare.entity.Favor;
import com.cdu.videoshare.entity.Praise;
import com.cdu.videoshare.entity.User;
import com.cdu.videoshare.service.FavorService;
import com.cdu.videoshare.service.VideoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.Date;

@Controller
@RequestMapping("praise")
public class PraiseController {

    @Autowired
    private FavorService favorService;

    @GetMapping("add/{id}")
    public String add(@PathVariable int id, HttpSession session, Model model){
        User user=(User)session.getAttribute("user");
        System.out.println(id+"---"+user.getId());
        if(favorService.getByUserId(user.getId(),id)==null){
            Praise praise=new Praise();
            praise.setUser_id(user.getId());
            praise.setVideo_id(id);
            Date date=new Date();
            praise.setPraise_time(date);
            favorService.addPraise(praise);
            model.addAttribute("msg","点赞成功");
            model.addAttribute("videos",videoService.getByUserId2(user.getId()));
            return "home/my_praise";
        }else{
            model.addAttribute("msg","已存在点赞列表");
            model.addAttribute("videos",videoService.getByUserId2(user.getId()));
            return "home/my_praise";
        }
    }

    @Autowired
    private VideoService videoService;

    @GetMapping("myPraise")
    public String myFavor(HttpSession session, Model model){
        User user=(User)session.getAttribute("user");
        model.addAttribute("videos",videoService.getByUserId2(user.getId()));
        return "home/my_praise";
    }

}
