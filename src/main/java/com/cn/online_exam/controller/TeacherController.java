package com.cn.online_exam.controller;

import com.cn.online_exam.pojo.*;
import com.cn.online_exam.service.PaperService;
import com.cn.online_exam.service.StudentService;
import com.cn.online_exam.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

@Controller
@RequestMapping("/PaperService")
public class TeacherController {

    private SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");

    @Autowired
    private PaperService paperService;

    @Autowired
    private TeacherService teacherService;

    @Autowired
    private StudentService studentService;
    private HttpServletRequest request;
    private HttpServletResponse response;


    @RequestMapping("/addPaper")
    public String addPaper(HttpServletRequest request, HttpServletResponse response) throws ParseException {
        String exam_name = request.getParameter("exam_name");
        String major = request.getParameter("major");
        String start_date = request.getParameter("start_date");
        String end_date = request.getParameter("end_date");
        Integer exam_time = Integer.valueOf(request.getParameter("exam_time"));
        System.out.println(exam_name);
        System.out.println(major);
        System.out.println(start_date);
        System.out.println(end_date);
        System.out.println(exam_time);
        Paper paper = new Paper(null, major, exam_name, simpleDateFormat.parse(start_date),
                simpleDateFormat.parse(end_date), exam_time);
        paperService.insertPaper(paper);
        List<Paper> paperList = paperService.findAllPaper();
        request.setAttribute("paperList", paperList);
        // TODO
        return "../success";
    }

    @RequestMapping("/manageQuestion")
    public String manageQuestion(HttpServletRequest request, HttpServletResponse response) {
        String account = (String) request.getSession().getAttribute("name");
        String major = teacherService.findByAccount(account).getExam_name();
        List<Question> questionList = teacherService.findByExamName(major);
        request.setAttribute("questionList",questionList);
        request.setAttribute("exam_name",major);
        return "questionManage";
    }

    @RequestMapping("/getAllPaper")
    public String getAllPaper(HttpServletRequest request, HttpServletResponse response) {
        List<Paper> paperList = paperService.findAllPaper();
        request.setAttribute("paperList", paperList);
        return "examList";
    }

    @RequestMapping("/delPaper")
    public String delPaper(HttpServletRequest request, HttpServletResponse response) {
        int index = Integer.parseInt(request.getParameter("delete"));
        List<Paper> paperList = paperService.findAllPaper();
        System.out.println(paperList.toString());
        paperService.delPaper(paperList.get(index).getPaperID());
        return "../success";
    }

    @RequestMapping("/examResult")
    public String getExamResult(HttpServletRequest request, HttpServletResponse response) {
        List<ExamResult> examResults = paperService.findAllResult();
        request.setAttribute("examResults", examResults);
        return "examNotes";
    }


    @RequestMapping("/generateExam")
    public String generateExam(HttpServletRequest request, HttpServletResponse response) {
        String name = (String) request.getSession().getAttribute("name");
        Student student = studentService.findByAccount(name);
        String major = student.getMajor();
        System.out.println(major);
        List<Paper> paperList = paperService.findAllPaper();
        String exam_name = null;
        for (Paper paper : paperList) {
            if (paper.getMajor().equalsIgnoreCase(major)) {
                System.out.println(paper.getMajor());
                exam_name = paper.getExam_name();
            }
        }
        List<Question> questionList = teacherService.findByExamName(exam_name);
        System.out.println(questionList.toString());
        request.setAttribute("questionList", questionList);
        return "examing";
    }


    @RequestMapping("/getTeachInfo")
    public String getTeachInfo(HttpServletRequest request, HttpServletResponse response) {
        String name = (String) request.getSession().getAttribute("name");
        System.out.println(name);
        Teacher teacher = teacherService.findByAccount(name);
        System.out.println(teacher.toString());
        request.setAttribute("teacher", teacher);
        return "teacherInfo";
    }


    @RequestMapping("/updateTeachInfo")
    public String updateTeachInfo(HttpServletRequest request, HttpServletResponse response) {
        String new_account = request.getParameter("new_account");
        Teacher old_teacher = teacherService.findByAccount((String) request.getSession().getAttribute("name"));
        String new_password = request.getParameter("new_password");
        String new_name = request.getParameter("new_name");
        Integer gender = request.getParameter("gender").equals("男") ? 1 : 2;
        String new_mail = request.getParameter("new_mail");
        String new_exam_name = request.getParameter("new_exam_name");
        Teacher teacher = new Teacher(old_teacher.getTeacherID(),
                new_account == null ? old_teacher.getAccount() : new_account,
                new_password == null ? old_teacher.getPassword() : new_password,
                new_name == new_exam_name ? old_teacher.getName() : new_name,
                gender,
                new_mail == null ? old_teacher.getMail() : new_mail,
                new_exam_name == new_name ? old_teacher.getExam_name() : new_exam_name);
        teacherService.updateTeacher(teacher);
        return "../success";
    }


    @RequestMapping("/getAllStu")
    public String getAllStu(HttpServletRequest request, HttpServletResponse response) {
        List<Student> studentList = teacherService.findAllStudent();
        request.setAttribute("studentList",studentList);
        return "studentInfo";
    }


    @RequestMapping("/addQuestion")
    public String addQuestion(HttpServletRequest request,HttpServletResponse response) {
        Integer questionID = Integer.valueOf(request.getParameter("questionID"));
        String question = request.getParameter("question");
        String answer = request.getParameter("answer");
        String option_a = request.getParameter("option_a");
        String option_b = request.getParameter("option_b");
        String option_c = request.getParameter("option_c");
        String option_d = request.getParameter("option_d");
        String analysis = request.getParameter("analysis");
        String point = request.getParameter("point");
        String difficulty = request.getParameter("difficulty");
        Teacher teacher = teacherService.findByAccount((String) request.getSession().getAttribute("name"));
        Question question1 = new Question(null, questionID, question, answer,option_a,option_b,option_c,option_d,analysis,point,difficulty,teacher.getExam_name());
        teacherService.insertQuestion(question1);
        return "../success";
    }

}
