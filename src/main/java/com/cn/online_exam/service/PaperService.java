package com.cn.online_exam.service;

import com.cn.online_exam.dao.ExamResultDao;
import com.cn.online_exam.pojo.ExamResult;
import com.cn.online_exam.pojo.Paper;

import java.util.List;

public interface PaperService {
    List<Paper> findAllPaper();
    void updatePaper(Paper paper);
    Paper findByPaperID(Integer paperID);
    void delPaper(Integer paperID);
    void insertPaper(Paper paper);

    List<ExamResult> findAllResult();
    ExamResultDao findByStudentID(Integer studentID);
    void insertResult(ExamResultDao examResult);
    void delResultByPaperID(Integer paperID);
}