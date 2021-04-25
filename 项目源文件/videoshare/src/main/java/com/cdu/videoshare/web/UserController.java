package com.cdu.videoshare.web;

import com.cdu.videoshare.entity.User;
import com.cdu.videoshare.mapper.UserMapper;
import com.cdu.videoshare.service.UserService;
import com.cdu.videoshare.service.VideoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.net.ssl.HttpsURLConnection;
import javax.servlet.http.HttpSession;
import java.util.Date;

@Controller
@RequestMapping("user")
public class UserController {

    @GetMapping("reg")
    public String reg(User user){
        return "reg";
    }

    @Autowired
    private UserService userService;

    @PostMapping("reg")
    public String reg(String account, String password,String password1, String email, Model model){
        if (account == null || account.equals("")){
            model.addAttribute("message", "请输入用户名");
            return "reg";
        }else if(password == null || password.equals("")){
            model.addAttribute("message", "请输入密码");
            return "reg";
        }else if(email == null || email.equals("")){
            model.addAttribute("message", "请输入邮箱");
            return "reg";
        }else if(userService.getByAccount(account)!=null){
            model.addAttribute("message", "用户已存在");
            return "reg";
        }else if(!password.equals(password1)) {
            model.addAttribute("message", "两次密码不一致");
            return "reg";
        }else {
            System.out.println(account);
            User user=new User();
            user.setAccount(account);
            user.setPassword(password);
            user.setEmail(email);
            Date date=new Date();
            user.setReg_time(date);
            user.setScore(0);
            user.setStatus("1");
            user.setVideo_num(0);
            userService.reg(user);
            model.addAttribute("message", "注册成功");
            model.addAttribute("users",userService.getAll());
            return "user_list";
        }
    }

    @GetMapping("list")
    public String list(Model model){
        model.addAttribute("users",userService.getAll());
        return "admin/user_list";
    }

    @GetMapping("login")
    public String login(User user){
        return "login";
    }

    @Autowired
    private VideoService videoService;

    @PostMapping("login")
    public String login(String account, String password, HttpSession session,Model model){
        if(userService.getByAccountAndPassword(account,password)!=null){
            session.setAttribute("account",account);
            User user=userService.getByAccount(account);
            session.setAttribute("user",user);
            session.setAttribute("user_id",userService.getByAccount(account).getId());
            model.addAttribute("videos",videoService.getVideoByUserId(userService.getByAccount(account).getId()));
            return "index";
        }else{
            return "login";
        }
    }

    @GetMapping("index")
    public String index(HttpSession session,Model model){
        User user=(User)session.getAttribute("user");
        model.addAttribute("user",user);
        return "home/index";
    }

}

