package com.cn.online_exam.service.impl;

import com.cn.online_exam.dao.PaperDao;
import com.cn.online_exam.dao.StudentDao;
import com.cn.online_exam.dao.TeacherDao;
import com.cn.online_exam.pojo.Paper;
import com.cn.online_exam.pojo.Teacher;
import com.cn.online_exam.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class TeacherServiceImpl implements TeacherService {
    @Autowired
    private TeacherDao teacherDao;
    private PaperDao paperDao;
    @Override
    public List<Teacher> findAllStudent(List<Long> longList) {
        return teacherDao.findAllTeacher(longList);
    }

    @Override
    public void updateTeacher(Teacher teacher) {
        teacherDao.updateTeacher(teacher);
    }

    @Override
    public Teacher findByAccount(String account) {
        return teacherDao.findByAccount(account);
    }

    @Override
    public void insertTeacher(Teacher teacher) {
        teacherDao.insertTeacher(teacher);
    }

    @Override
    public List<Paper> findAllPaper(List<Long> longList) {
        return paperDao.findAllPaper(longList);
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
}