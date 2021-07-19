package com.cn.online_exam.dao;

import com.cn.online_exam.pojo.Administrator;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface adminDao {

    @Select("select * from admin")
    public List<Administrator> findAll();
}
