package com.cn.online_exam.controller;


import com.cn.online_exam.pojo.Administrator;
import com.cn.online_exam.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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



}
