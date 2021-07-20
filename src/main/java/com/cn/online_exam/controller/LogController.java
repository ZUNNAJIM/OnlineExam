package com.cn.online_exam.controller;

import com.cn.online_exam.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("LogService")
public class LogController {

    @Autowired
    private LoginService loginService;

    @RequestMapping("/login")
    public String  login(HttpServletRequest request, HttpServletResponse response)
    {
        String userName = request.getParameter("name");
        String password = request.getParameter("password");
        String identity = request.getParameter("identity");
        String nextPage = loginService.login(userName, password, identity);
//        System.out.println(nextPage);
        request.setAttribute("name",userName);
        request.setAttribute("identity",identity);

        return nextPage;
    }


    @RequestMapping("logout")
    public String logout(HttpServletRequest request, HttpServletResponse response)
    {
        return "../index";
    }
}
