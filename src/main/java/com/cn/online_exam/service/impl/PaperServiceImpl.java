package com.cn.online_exam.service.impl;

import com.cn.online_exam.dao.ExamResultDao;
import com.cn.online_exam.dao.PaperDao;
import com.cn.online_exam.pojo.ExamResult;
import com.cn.online_exam.pojo.Paper;
import com.cn.online_exam.service.PaperService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("PaperService")
public class PaperServiceImpl implements PaperService {
    @Autowired
    private PaperDao paperDao;

    @Autowired
    private ExamResultDao examResultDao;

    @Override
    public List<Paper> findAllPaper() {
        return paperDao.findAllPaper();
    }

    @Override
    public void updatePaper(Paper paper) {
        paperDao.updatePaper(paper);
    }

    @Override
    public Paper findByPaperID(Integer paperID) {
        return paperDao.findByPaperID(paperID);
    }

    @Override
    public void delPaper(Integer paperID) {
        paperDao.delPaper(paperID);
    }

    @Override
    public void insertPaper(Paper paper) {
        paperDao.insertPaper(paper);
    }

    @Override
    public List<ExamResult> findAllResult() {
        return examResultDao.findAllResult();
    }

    @Override
    public ExamResultDao findByStudentID(Integer studentID) {
        return examResultDao.findByStudentID(studentID);
    }

    @Override
    public void insertResult(ExamResultDao examResult) {
        examResultDao.insertResult(examResult);
    }

    @Override
    public void delResultByPaperID(Integer paperID) {
        examResultDao.delResultByPaperID(paperID);
    }
}