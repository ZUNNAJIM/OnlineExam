package com.cn.online_exam.service;

import com.cn.online_exam.pojo.Student;

public interface StudentService {
    String updateStudent(Student student);
    Student findByAccount(String account);
    String insertStudent(Student student);
}