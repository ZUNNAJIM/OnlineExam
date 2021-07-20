package com.cn.online_exam.service.impl;

import com.cn.online_exam.dao.AdminDao;
import com.cn.online_exam.pojo.Administrator;
import com.cn.online_exam.pojo.Student;
import com.cn.online_exam.pojo.Teacher;
import com.cn.online_exam.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("adminService")
public class AdminServiceImpl implements AdminService {
    @Autowired
    private AdminDao adminDao;

    @Override
    public List<Administrator> findALL() {
        return adminDao.findAllAdmin();
    }

    @Override
    public List<Teacher> findAllTeacher() {
        return null;
    }

    @Override
    public Administrator findAdmin(String account) {
        return adminDao.findAdmin(account);
    }

    @Override
    public Teacher findTeach(String account) {
        return adminDao.findTeach(account);
    }

    @Override
    public Student findStu(String account) {
        return adminDao.findStu(account);
    }

    @Override
    public void delAdmin(String account) {
        adminDao.delAdmin(account);
    }

    @Override
    public void delTeacher(String account) {
        adminDao.delTeacher(account);
    }

    @Override
    public void delStudent(String account) {
        adminDao.delStudent(account);
    }

    @Override
    public void updateAdmin(Administrator administrator) {
        adminDao.updateAdmin(administrator);
    }

    @Override
    public void addAdmin(Administrator administrator) {
        adminDao.addAdmin(administrator);
    }
}
