package com.cn.online_exam.controller;

import com.cn.online_exam.pojo.Paper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
@RequestMapping("PaperService")
public class PaperController {

    private SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");

    @RequestMapping("addPaper")
    public String addPaper(HttpServletRequest request, HttpServletResponse response) throws ParseException {
        String exam_name = request.getParameter("exam_name");
        String major = request.getParameter("major");
        String  start_date = request.getParameter("start_date");
        String  end_date = request.getParameter("end_date");
        Integer exam_time = Integer.valueOf(request.getParameter("exam_time"));
        Integer paperID = 0;
        Paper paper = new Paper(paperID, major, exam_name, simpleDateFormat.parse(start_date),
                simpleDateFormat.parse(end_date), exam_time);
        System.out.println(paper.toString());
        // TODO
        return "list";
    }
}
