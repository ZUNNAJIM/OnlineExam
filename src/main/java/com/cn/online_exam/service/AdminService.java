package com.cn.online_exam.service;

import com.cn.online_exam.pojo.Administrator;
import com.cn.online_exam.pojo.Teacher;

import java.util.List;

public interface AdminService {

    public List<Administrator> findALL();

    List<Teacher> findAllTeacher();
}
