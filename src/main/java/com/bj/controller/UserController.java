package com.bj.controller;

import com.bj.pojo.User;
import com.bj.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;



    @RequestMapping("/login")
    public String login(User user,HttpSession httpSession,Model model){
        user=userService.login(user);
        if (user!=null){
            httpSession.setAttribute("user",user);
            model.addAttribute("user",user);
            return "index1";
        }else{
            return "login";
        }
    }

    @RequestMapping("/regist")
    @ResponseBody
    public User regist(User user, Model model, HttpSession session){
        userService.regist(user);
        User user1=userService.select(user);
        if (user1!=null){
            return user;
        }else{
            return null;
        }
    }
}
