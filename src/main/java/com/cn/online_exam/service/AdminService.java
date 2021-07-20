package com.cn.online_exam.service;

import com.cn.online_exam.pojo.Administrator;
import com.cn.online_exam.pojo.Student;
import com.cn.online_exam.pojo.Teacher;

import java.util.List;

public interface AdminService {

    List<Administrator> findALL();
    Administrator findAdmin(String account);
    Teacher findTeach(String account);
    Student findStu(String account);

    void delAdmin(String account);
    void delTeacher(String account);
    void delStudent(String account);

    void updateAdmin(Administrator administrator);
    void addAdmin(Administrator administrator);
}
