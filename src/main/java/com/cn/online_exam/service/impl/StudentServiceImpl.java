package com.cn.online_exam.service.impl;

import com.cn.online_exam.dao.StudentDao;
import com.cn.online_exam.dao.TeacherDao;
import com.cn.online_exam.pojo.Student;
import com.cn.online_exam.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;

public class StudentServiceImpl implements StudentService {
    @Autowired
    private StudentDao studentDao;
    @Override
    public String updateStudent(Student student) {
        return null;
    }

    @Override
    public Student findByAccount(String account) {
        return studentDao.findByAccount(account);
    }

    @Override
    public String insertStudent(Student student) {
        return null;
    }
}