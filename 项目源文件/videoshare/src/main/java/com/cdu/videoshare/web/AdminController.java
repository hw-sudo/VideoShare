package com.cdu.videoshare.web;


import com.cdu.videoshare.entity.Admin;
import com.cdu.videoshare.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import javax.websocket.Session;

@Controller
@RequestMapping("admin")
public class AdminController {

    @GetMapping("login")
    public String login(){
        return "admin/login";
    }

    @Autowired
    private AdminService adminService;

    @PostMapping("login")
    public String login(String account, String password, Model model, HttpSession session) {
        Admin admin = adminService.login(account);
        if (admin == null) {
            model.addAttribute("msg", "该账号不存在");
            return "admin/login";
        } else {
            if (!admin.getPassword().equals(password)) {
                model.addAttribute("msg", "密码不正确");
                return "admin/login";
            } else {
                session.setAttribute("admin", admin);
                return "admin/index";
            }
        }
    }



    @PostMapping("updatePwd")
    public String updatePwd(String pwd0,String pwd1,String pwd2,HttpSession session,Model model){
        Admin admin=(Admin)session.getAttribute("admin");
        if(admin.getPassword().equals(pwd0)){
            if(pwd1.equals(pwd2)){
                adminService.updatePwd(admin.getId(), pwd1);
            }else{
                model.addAttribute("msg", "两次密码不相同");
                return "admin/pwd_update";
            }
        }else{
            model.addAttribute("msg", "原密码不正确");
            return "admin/pwd_update";
        }
        model.addAttribute("msg", "密码修改成功");
        return "admin/pwd_update";
    }

}
