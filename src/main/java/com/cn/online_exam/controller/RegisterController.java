package com.cn.online_exam.controller;

import com.cn.online_exam.dao.AdminDao;
import com.cn.online_exam.dao.StudentDao;
import com.cn.online_exam.pojo.Administrator;
import com.cn.online_exam.pojo.Student;
import com.cn.online_exam.pojo.Teacher;
import com.cn.online_exam.service.AdminService;
import com.cn.online_exam.service.StudentService;
import com.cn.online_exam.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("/Register")
public class RegisterController {

    @Autowired
    private AdminService adminService;

    @Autowired
    private StudentService studentService;

    @Autowired
    private TeacherService teacherService;


    @RequestMapping("/addAdmin")
    public String addAdmin(HttpServletRequest request, HttpServletResponse response) {
        String account = request.getParameter("account");
        String password1 = request.getParameter("password1");
        String password2 = request.getParameter("password2");
        if (!password1.equals(password2)) {
            return "../errorPage";
        }
        Administrator administrator = new Administrator(null,account,password1);
        adminService.addAdmin(administrator);
        return "../index";
    }

    @RequestMapping("/addTeach")
    public String addTeach(HttpServletRequest request, HttpServletResponse response) {
        String account = request.getParameter("account");
        String mail = request.getParameter("mail");
        String name = request.getParameter("name");
        Integer gender = Integer.valueOf(request.getParameter("sex"));
        String password1 = request.getParameter("password1");
        String password2 = request.getParameter("password2");
        String exam_name = request.getParameter("exam_name");
        if (!password1.equals(password2)) {
            return "../errorPage";
        }
        Teacher teacher = new Teacher(null,account,password1,name,gender,mail,exam_name);
        teacherService.insertTeacher(teacher);
        return "../index";
    }


    @RequestMapping("/addStu")
    public String addStu(HttpServletRequest request, HttpServletResponse response) {
        String account = request.getParameter("account");
        String name = request.getParameter("name");
        Integer gender = Integer.valueOf(request.getParameter("sex"));
        String password1 = request.getParameter("password1");
        String password2 = request.getParameter("password2");
        String major = request.getParameter("major");
        if (!password1.equals(password2)) {
            return "../errorPage";
        }
        Student student = new Student(null,account,password1,name,gender,major,0);
        studentService.insertStudent(student);
        return "../index";
    }

}
