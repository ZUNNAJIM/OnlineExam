package com.cn.online_exam.service;

import com.cn.online_exam.pojo.Teacher;

import java.util.List;

public interface TeacherService {
    List<Teacher> findAllStudent(List<Long> longList);
    String updateTeacher(Teacher teacher);
    Teacher findByAccount(String account);
    boolean insertTeacher(Teacher teacher);
}