package com.cn.online_exam.service.impl;

import com.cn.online_exam.dao.AdminDao;
import com.cn.online_exam.pojo.Administrator;
import com.cn.online_exam.pojo.Student;
import com.cn.online_exam.pojo.Teacher;
import com.cn.online_exam.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service("LoginService")
public class LoginServiceImpl implements LoginService {

    @Autowired
    private AdminDao adminDao;

    @Override
    public String login(String account, String password, String identity) {

        if (identity.equals("teacher")) {
            Teacher teacher = adminDao.findTeach(account);
            if (teacher != null && teacher.getPassword().equals(password)) {
                    return "teacherPage";
            }
//            return "../index";
        } else if (identity.equals("student")) {
            Student student = adminDao.findStu(account);
            if (student != null && student.getPassword().equals(password)) {
                return "studentPage";
            }
//            return "../index";
        } else {
            Administrator administrator = adminDao.findAdmin(account);
//            System.out.println(administrator.toString());
            if (administrator != null && administrator.getPassword().equals(password)) {
                return "adminPage";
            }
//            return "../index";
        }
        return "../errorPage";
    }
}
