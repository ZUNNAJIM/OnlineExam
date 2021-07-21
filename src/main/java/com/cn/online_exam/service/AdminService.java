package com.cn.online_exam.service;

import com.cn.online_exam.pojo.Administrator;
import com.cn.online_exam.pojo.Student;
import com.cn.online_exam.pojo.Teacher;
import org.springframework.stereotype.Service;

import java.util.List;

public interface AdminService {



    List<Teacher> findAllTeacher();

    List<Administrator> findALL();
    Administrator findAdmin(String account);
    Integer findAdminID(String account);
    Teacher findTeach(String account);
    Student findStu(String account);

    void delAdmin(String account);
    void delTeacher(String account);
    void delStudent(String account);

    void updateAdmin(Administrator administrator);
    void addAdmin(Administrator administrator);
}
