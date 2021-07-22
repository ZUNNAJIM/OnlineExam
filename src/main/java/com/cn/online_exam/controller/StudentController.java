package com.cn.online_exam.controller;

import com.cn.online_exam.pojo.ExamResult;
import com.cn.online_exam.pojo.Question;
import com.cn.online_exam.pojo.Student;
import com.cn.online_exam.service.PaperService;
import com.cn.online_exam.service.StudentService;
import com.cn.online_exam.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;

@Controller
@RequestMapping("/studentService")
public class StudentController {

    @Autowired
    private TeacherService teacherService;

    @Autowired
    private StudentService studentService;

    @Autowired
    private PaperService paperService;

    @RequestMapping("/getPoint")
    public String getPoint(HttpServletRequest request, HttpServletResponse response) {
        List<Question> questionList = teacherService.findAllQuestion();
        HashMap<String, String> pointMap = new HashMap<>();
        for (Question question : questionList) {
            pointMap.put(question.getQuestion(), question.getPoint());
        }
        System.out.println(pointMap.toString());
        request.setAttribute("pointMap", pointMap);
        return "point";
    }

    @RequestMapping("/getInfo")
    public String getInfo(HttpServletRequest request, HttpServletResponse response) {
        String account = (String) request.getSession().getAttribute("name");
        Student student = studentService.findByAccount(account);
        request.setAttribute("student", student);
        return "studentInformation";
    }

    @RequestMapping("/update")
    public String update(HttpServletRequest request, HttpServletResponse response) {
        String account = (String) request.getSession().getAttribute("name");
        Student student = studentService.findByAccount(account);
        String new_name = request.getParameter("new_name");
        String new_account = request.getParameter("new_account");
        String new_password = request.getParameter("new_password");
        String new_major = request.getParameter("new_major");
        student.setName(new_name == null ? student.getName() : new_name);
        student.setAccount(new_account == null ? student.getAccount() : new_account);
        student.setPassword(new_password == null ? student.getPassword() : new_password);
        student.setMajor(new_major == null ? student.getMajor() : new_major);
        studentService.updateStudent(student);
        return "../success";
    }

    @RequestMapping("/getGrade")
    public String getGrade(HttpServletRequest request, HttpServletResponse response) {
        String account = (String) request.getSession().getAttribute("name");
        Student student = studentService.findByAccount(account);
        Integer studentID = student.getStudentID();
        ExamResult examResult = paperService.findByStudentID(studentID);
        request.setAttribute("examResult", examResult);
        request.setAttribute("name",student.getName());
        request.setAttribute("studentID",studentID);
        return "checkGrade";
    }

}