package com.cn.online_exam.service;

import com.cn.online_exam.pojo.Paper;
import com.cn.online_exam.pojo.Teacher;

import java.util.List;

public interface TeacherService {
    List<Teacher> findAllStudent(List<Long> longList);
    void updateTeacher(Teacher teacher);
    Teacher findByAccount(String account);
    void insertTeacher(Teacher teacher);

    List<Paper> findAllPaper(List<Long> longList);
    void updatePaper(Paper paper);
    Paper findByPaperID(Integer paperID);
    void delPaper(Integer paperID);
    void insertPaper(Paper paper);
}