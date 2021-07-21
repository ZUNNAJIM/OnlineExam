package com.cn.online_exam.service;

import com.cn.online_exam.pojo.Paper;
import com.cn.online_exam.pojo.Question;
import com.cn.online_exam.pojo.Student;
import com.cn.online_exam.pojo.Teacher;

import java.util.List;

public interface TeacherService {
    List<Student> findAllStudent();
    void updateTeacher(Teacher teacher);
    Teacher findByAccount(String account);
    void insertTeacher(Teacher teacher);

    List<Question> findAllQuestion();
    void updateQuestion(Question question);
    void insertQuestion(Question question);
    void delQuestion(Integer ID);
}