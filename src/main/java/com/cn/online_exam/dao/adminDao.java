package com.cn.online_exam.dao;

import com.cn.online_exam.pojo.Administrator;
import com.cn.online_exam.pojo.Student;
import com.cn.online_exam.pojo.Teacher;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface adminDao {

    @Select("select * from admin")
    public List<Administrator> findAll();

    /**
     * 根据账号名放回密码，判断是否等于用户输入的密码.
     * @param account    账号
     * @return  账号对应的密码.
     */
    @Select("select * from admin where account=#{account}")
    public Administrator findAdmin(String account);

    @Select("select * from teacher where account=#{account}")
    public Teacher findTeach(String account);

    @Select("select * from student where account=#{account}")
    public Student findStu(String account);
}
