package com.cn.online_exam.service.impl;

import com.cn.online_exam.dao.adminDao;
import com.cn.online_exam.pojo.Administrator;
import com.cn.online_exam.pojo.Student;
import com.cn.online_exam.pojo.Teacher;
import com.cn.online_exam.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.Writer;


@Service("LoginService")
public class LoginServiceImpl implements LoginService {

    @Autowired
    private adminDao adminDao;

    @Override
    public String login(String account, String password, String identity) {
        if (identity.equals("教师")) {
            Teacher teacher = adminDao.findTeach(account);
            if (teacher.getPassword().equals(password)) {
                return "teacherList.jsp";
            }
            return "index.jsp";
        } else if (identity.equals("学生")) {
            Student student = adminDao.findStu(account);
            if (student.getPassword().equals(password)) {
                return "studentList.jsp";
            }
            return "index.jsp";
        } else {
            Administrator administrator = adminDao.findAdmin(account);
            if (administrator.getPassword().equals(password)) {
                return "/WEB-INF/pages/list.jsp";
            }
            return "/WEB-INF/pages/list.jsp";
        }
    }
}
