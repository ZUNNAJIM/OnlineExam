package com.cn.online_exam.service.impl;

import com.cn.online_exam.dao.StudentDao;
import com.cn.online_exam.dao.TeacherDao;
import com.cn.online_exam.pojo.Student;
import com.cn.online_exam.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("studentService")
public class StudentServiceImpl implements StudentService {

    @Autowired
    private StudentDao studentDao;
    @Override
    public void updateStudent(Student student) {
        studentDao.updateStudent(student);
    }

    @Override
    public Student findByAccount(String account) {
        return studentDao.findByAccount(account);
    }

    @Override
    public void insertStudent(Student student) {
        studentDao.insertStudent(student);
    }
}