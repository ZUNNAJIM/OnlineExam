package com.cn.online_exam.dao;

import com.cn.online_exam.pojo.Administrator;
import com.cn.online_exam.pojo.Student;
import com.cn.online_exam.pojo.Teacher;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AdminDao {

    /**
     * 返回所有的管理员列表
     * @return 所有的管理员。
     */
    @Select("select * from admin")
    public List<Administrator> findAllAdmin();

    @Select("select * from teacher")
    public List<Teacher> findAllTeacher();




    /**
     * 根据账号名返回密码，判断是否等于用户输入的密码.
     * @param account    账号
     * @return  账号对应的密码.
     */
    @Select("select * from admin where account=#{account}")
    public Administrator findAdmin(String account);

    @Select("select adminID from admin where account=#{account}")
    public Integer getAdminID(String  account);

    @Select("select * from teacher where account=#{account}")
    public Teacher findTeach(String account);

    @Select("select * from student where account=#{account}")
    public Student findStu(String account);


    /**
     * 实现各个表的删除功能。
     * @param account 账号名
     */
    @Delete("delete from admin where account=#{account}")
    public void delAdmin(String account);

    @Delete("delete from teacher where account=#{account}")
    public void delTeacher(String account);

    @Delete("delete from student where account=#{account}")
    public void delStudent(String account);


    /**
     * 更新自己的信息。
     * @param administrator 即将更新的信息。
     */
    @Update("update admin set account=#{account}, password=#{password} where adminID=#{adminID}")
    public void updateAdmin(Administrator administrator);

    /**
     * 更新。
     * @param administrator 即将更新的信息。
     */
    @Insert("insert into admin(adminID, account, password) values(#{adminID}, #{account}, #{password})")
    public void addAdmin(Administrator administrator);
}
