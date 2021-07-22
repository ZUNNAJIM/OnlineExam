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


    /**
     * 返回自己的信息
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @RequestMapping("/getInfo")
    public void getInfo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String  name = (String) request.getSession().getAttribute("name");
        Administrator administrator = adminService.findAdmin(name);
        request.setAttribute("admin", administrator);
        request.getRequestDispatcher("/jsp/adminInformation.jsp").forward(request,response);
    }


    /**
     * 更新自己的信息
     * @param request
     * @param response
     * @return
     */
    @RequestMapping("/update")
    public String update(HttpServletRequest request, HttpServletResponse response) {
        String new_name = request.getParameter("new_name");
        String new_password = request.getParameter("new_password");
        Administrator old_admin = adminService.findAdmin((String) request.getSession().getAttribute("name"));
        Administrator administrator = new Administrator(old_admin.getAdminID() ,
                new_name ==null ? old_admin.getAccount():new_name, new_password == null?old_admin.getPassword():new_password);
        System.out.println(administrator.toString());
        adminService.updateAdmin(administrator);
        return "../success";
    }


    /**
     * 查找所有的教师
     * @param request
     * @param response
     * @return
     * @throws ServletException
     * @throws IOException
     */
    @RequestMapping("/getAllTeach")
    public String getAllTeach(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Teacher> teacherList = adminService.findAllTeacher();
        request.setAttribute("teacherList",teacherList);
        return "teacherManage";
    }

    /**
     * 删除老师
     * @param request
     * @param response
     * @return
     */
    @RequestMapping("/delTaech")
    public String delTeach(HttpServletRequest request, HttpServletResponse response) {
        List<Teacher> teacherList = adminService.findAllTeacher();
        Integer index = Integer.valueOf(request.getParameter("index"));
        String account = teacherList.get(index).getAccount();
        adminService.delTeacher(account);
        // TODO
        return "../success";
    }


    /**
     * 查找所有的学生
     * @param request
     * @param response
     * @return
     * @throws ServletException
     * @throws IOException
     */
    @RequestMapping("/getAllStu")
    public String getAllStu(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Student> studentList = teacherService.findAllStudent();
        request.setAttribute("studentList", studentList);
        return "studentManage";
    }

    @RequestMapping("/delStu")
    public String delStu(HttpServletRequest request, HttpServletResponse response) {
        List<Student> studentList = teacherService.findAllStudent();
        Integer index = Integer.valueOf(request.getParameter("index"));
        String account = studentList.get(index).getAccount();
        adminService.delStudent(account);
        // TODO
        return "../success";
    }


    /**
     * 查找所有的管理员
     * @param request
     * @param response
     * @return
     * @throws ServletException
     * @throws IOException
     */
    @RequestMapping("/getAllAdmin")
    public String getAllAdmin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Administrator> administratorList = adminService.findALL();
        request.setAttribute("administratorList", administratorList);
        return "adminManage";
    }

    /**
     * 删除管理员
     * @param request
     * @param response
     * @return
     */
    @RequestMapping("/delAdmin")
    public String delAdmin(HttpServletRequest request, HttpServletResponse response) {
        List<Administrator> administratorList = adminService.findALL();
        Integer index = Integer.valueOf(request.getParameter("index"));
        String account = administratorList.get(index).getAccount();
        adminService.delAdmin(account);
        System.out.println(index);
        // TODO
        return "../success";
    }
}
