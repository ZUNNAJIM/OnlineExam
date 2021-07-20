package com.cn.online_exam.service;

import com.cn.online_exam.pojo.Student;

public interface StudentService {

    void updateStudent(Student student);

    Student findByAccount(String account);

    void insertStudent(Student student);
}