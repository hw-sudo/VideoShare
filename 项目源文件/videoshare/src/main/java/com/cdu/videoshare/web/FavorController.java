package com.cdu.videoshare.web;


import com.cdu.videoshare.entity.Favor;
import com.cdu.videoshare.entity.ResponseEntity;
import com.cdu.videoshare.entity.User;
import com.cdu.videoshare.service.FavorService;
import com.cdu.videoshare.service.VideoService;
import com.cdu.videoshare.service.impl.FavorServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.io.PrintWriter;
import java.util.Date;

@Controller
@RequestMapping("favor")
public class FavorController {

    @Autowired
    private FavorService favorService;

    @GetMapping("add/{id}")
    public String add(@PathVariable int id, HttpSession session,Model model){
        User user=(User)session.getAttribute("user");
        System.out.println(id+"---"+user.getId());
        if(favorService.searchByUserId(user.getId(),id)==null){
            Favor favor=new Favor();
            favor.setUser_id(user.getId());
            favor.setVideo_id(id);
            Date date=new Date();
            favor.setFavor_time(date);
            favorService.add(favor);
            model.addAttribute("msg","收藏成功");
            model.addAttribute("videos",videoService.getByUserId(user.getId()));
            return "home/my_favor";
        }else{
            model.addAttribute("msg","已存在收藏列表");
            model.addAttribute("videos",videoService.getByUserId(user.getId()));
            return "home/my_favor";
        }
    }

    @Autowired
    private VideoService videoService;

    @GetMapping("myFavor")
    public String myFavor(HttpSession session, Model model){
        User user=(User)session.getAttribute("user");
        model.addAttribute("videos",videoService.getByUserId(user.getId()));
        return "home/my_favor";
    }

}
