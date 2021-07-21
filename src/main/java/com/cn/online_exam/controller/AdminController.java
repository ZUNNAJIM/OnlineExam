package com.cn.online_exam.controller;


import com.cn.online_exam.pojo.Administrator;
import com.cn.online_exam.pojo.Student;
import com.cn.online_exam.pojo.Teacher;
import com.cn.online_exam.service.AdminService;
import com.cn.online_exam.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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


    @Autowired
    private TeacherService teacherService;

//    @RequestMapping("/findAll")
//    public String findAll(Model model)
//    {
//        List<Administrator> administratorList = adminService.findALL();
//        model.addAttribute("list",administratorList);
//        return "list";
//    }


    @RequestMapping("/getInfo")
    public void getInfo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String  name = (String) request.getSession().getAttribute("name");
        System.out.println(name);
        Administrator administrator = adminService.findAdmin(name);
        System.out.println(administrator.toString());
        request.setAttribute("admin", administrator);
        request.getRequestDispatcher("/jsp/adminInformation.jsp").forward(request,response);
    }


    @RequestMapping("/update")
    public String update(HttpServletRequest request, HttpServletResponse response) {
        String new_name = request.getParameter("new_name");
        request.getSession().setAttribute("name",new_name);
        String new_password = request.getParameter("new_password");
        Integer ID = adminService.findAdmin((String) request.getSession().getAttribute("name")).getAdminID();
        System.out.println(ID);
        Administrator administrator = null;
        if (!new_password.equals("")) {
            administrator = new Administrator(ID, new_name, new_password);
        } else {
            administrator = new Administrator(ID,new_name, (String) request.getSession().getAttribute("password"));
        }
        adminService.updateAdmin(administrator);
        return "../success";
    }


    @RequestMapping("/getAllTeach")
    public String getAllTeach(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Teacher> teacherList = adminService.findAllTeacher();
        request.setAttribute("teacherList",teacherList);
//        request.getRequestDispatcher("/jsp/teacherManage.jsp").forward(request, response);
        return "teacherManage";
    }


    @RequestMapping("/getAllStu")
    public String getAllStu(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Student> studentList = teacherService.findAllStudent();
        request.setAttribute("studentList", studentList);
//        request.getRequestDispatcher("/jsp/studentManage.jsp").forward(request,response);
        return "studentManage";
    }

    }
