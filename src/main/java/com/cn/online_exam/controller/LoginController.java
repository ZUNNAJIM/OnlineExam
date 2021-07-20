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
        String userName = request.getParameter("name");
    }
}
