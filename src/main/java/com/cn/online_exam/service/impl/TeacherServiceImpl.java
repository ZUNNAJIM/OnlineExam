package com.cn.online_exam.service.impl;

import com.cn.online_exam.dao.QuestionDao;
import com.cn.online_exam.dao.TeacherDao;
import com.cn.online_exam.pojo.Question;
import com.cn.online_exam.pojo.Student;
import com.cn.online_exam.pojo.Teacher;
import com.cn.online_exam.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("teacherService")
public class TeacherServiceImpl implements TeacherService {
    @Autowired
    private TeacherDao teacherDao;

    @Autowired
    private QuestionDao questionDao;

    @Override
    public List<Student> findAllStudent() {
        return teacherDao.findAllStudent();
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
    public List<Question> findAllQuestion() {
        return questionDao.findAllQuestion();
    }

    @Override
    public List<Question> findByExamName(String exam_name) {
        return questionDao.findExamQuestion(exam_name);
    }

    @Override
    public void updateQuestion(Question question) {
        questionDao.updateQuestion(question);
    }

    @Override
    public void insertQuestion(Question question) {
        questionDao.insertQuestion(question);
    }

    @Override
    public void delQuestion(Integer ID) {
        questionDao.delQuestion(ID);
    }

}