package com.cn.online_exam.controller;

import com.cn.online_exam.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
@RequestMapping("LoginService")
public class LoginController {

    @Autowired
    private LoginService loginService;

    @RequestMapping("/login")
    public void login(HttpServletRequest request, HttpServletResponse response)
    {
        System.out.println("This is in loginService/login");
        String account = request.getParameter("userName");
        String password = request.getParameter("userPwd");
        System.out.println(account);
        System.out.println(password);
        String identity = request.getParameter("identity");
        System.out.println(identity);
//        System.out.println(identity.length);
        try {
            request.getRequestDispatcher(loginService.login(account,password,identity)).forward(request,response);
        } catch (IOException | ServletException e) {
            e.printStackTrace();
        }
    }
}
