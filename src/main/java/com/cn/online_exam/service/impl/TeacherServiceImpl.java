package com.cn.online_exam.service.impl;

import com.cn.online_exam.dao.StudentDao;
import com.cn.online_exam.dao.TeacherDao;
import com.cn.online_exam.pojo.Teacher;
import com.cn.online_exam.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class TeacherServiceImpl implements TeacherService {
    @Autowired
    private TeacherDao teacherDao;
    @Override
    public List<Teacher> findAllStudent(List<Long> longList) {
        return teacherDao.findAllTeacher(longList);
    }

    @Override
    public String updateTeacher(Teacher teacher) {
        return null;
    }

    @Override
    public Teacher findByAccount(String account) {
        return teacherDao.findByAccount(account);
    }

    @Override
    public boolean insertTeacher(Teacher teacher) {
        return false;
    }
}