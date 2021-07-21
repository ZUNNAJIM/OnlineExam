package com.cn.online_exam.controller;


import com.cn.online_exam.pojo.Administrator;
import com.cn.online_exam.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    private AdminService adminService;

    @RequestMapping("/findAll")
    public String findAll(Model model)
    {
        List<Administrator> administratorList = adminService.findALL();
        model.addAttribute("list",administratorList);
        return "list";
    }


    @RequestMapping("getInfo")
    public void getInfo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String  name = request.getParameter("name");
        System.out.println(name);
        Administrator administrator = adminService.findAdmin(name);
        System.out.println(administrator.toString());
        request.setAttribute("admin", administrator);
        request.getRequestDispatcher("adminInformation").forward(request,response);
    }


    @RequestMapping("update")
    public void update() {

    }

}
