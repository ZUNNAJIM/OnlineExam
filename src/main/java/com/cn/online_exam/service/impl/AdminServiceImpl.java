package com.cn.online_exam.service.impl;

import com.cn.online_exam.pojo.Administrator;
import com.cn.online_exam.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("adminService")
public class AdminServiceImpl implements AdminService {

    @Autowired
    private com.cn.online_exam.dao.AdminDao adminDao;

    @Override
    public List<Administrator> findALL() {
        return adminDao.findAllAdmin();
    }
}
