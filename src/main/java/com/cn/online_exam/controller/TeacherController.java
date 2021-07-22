package com.cn.online_exam.controller;

import com.cn.online_exam.pojo.Paper;
import com.cn.online_exam.pojo.Question;
import com.cn.online_exam.service.PaperService;
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


    @RequestMapping("/addPaper")
    public String addPaper(HttpServletRequest request, HttpServletResponse response) throws ParseException {
        String exam_name = request.getParameter("exam_name");
        String major = request.getParameter("major");
        String  start_date = request.getParameter("start_date");
        String  end_date = request.getParameter("end_date");
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
        request.setAttribute("paperList" , paperList);
        // TODO
        return "list";
    }

    @RequestMapping("/manageQuestion")
    public String manageQuestion(HttpServletRequest request, HttpServletResponse response) {
        List<Paper> paperList = paperService.findAllPaper();
        request.setAttribute("paperList", paperList);
        HashMap<String , List<Question>> stringListHashMap = new HashMap<>();
        for (Paper paper : paperList) {
            String exam_name = paper.getExam_name();
            List<Question> questionList = teacherService.findByExamName(exam_name);
            System.out.println(questionList.size());
            stringListHashMap.put(exam_name,questionList);
        }
        request.setAttribute("stringListHashMap", stringListHashMap);
        System.out.println(paperList.size());
        System.out.println(stringListHashMap.size());
        return "questionManage";
    }


}
