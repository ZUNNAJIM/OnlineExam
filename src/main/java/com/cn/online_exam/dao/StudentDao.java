package com.cn.online_exam.dao;

import com.cn.online_exam.pojo.Student;
import com.cn.online_exam.pojo.Teacher;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface StudentDao {

    @Update("update student set studentID=#{studentID}, account=#{account}, password=#{password}, " +
    "name=#{name}, gender=#{gender}, major=#{major}, grade=#{grade} where account=#{account}")
    public boolean updateStudent(Student student);

    @Select("select * from student where account=#{account}")
    public Student findByAccount(String account);

    @Insert("insert into student(studentID, account, password, name, gender, major, grade) " +
            "values(#studentID}, #{account}, #{password}, #{name}, #{gender}, #{major}, #{grade}")
    public boolean insertStudent(Student student);
}
