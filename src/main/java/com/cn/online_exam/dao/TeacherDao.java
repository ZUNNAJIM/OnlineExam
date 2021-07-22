package com.cn.online_exam.dao;

import com.cn.online_exam.pojo.Student;
import com.cn.online_exam.pojo.Teacher;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Indexed;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TeacherDao {

    @Select("select * from student")
    public List<Student> findAllStudent();

    @Update("update teacher set teacherID=#{teacherID},account=#{account},password=#{password},name=#{name}," +
            "gender=#{gender},mail=#{mail},exam_name=#{exam_name} where account=#{account)")
    public boolean updateTeacher(Teacher teacher);

    @Select("select * from teacher where account=#{account}")
    public Teacher findByAccount(String account);

    @Insert("insert into teacher value(teacherID, account, password, name, gender, mail, exam_name) " +
            "values(#{teacherID}, #{account}, #{password}, #{name}, #{gender}, #{mail}, #{exam_name}")
    public boolean insertTeacher(Teacher teacher);
}
