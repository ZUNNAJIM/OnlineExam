package com.cn.online_exam.dao;

import com.cn.online_exam.pojo.ExamResult;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ExamResultDao {

    @Select("select * from exam_result")
    public List<ExamResult> findAllResult();

    @Select("select * from exam_result where studentID=#{studentID}")
    public ExamResultDao findByStudentID(Integer studentID);


    @Insert("insert into exam_result(resultID, studentID, paperID, date, result) " +
            "values(#{resultID}, #{studentID}, #{date}, #{result}")
    public boolean insertResult(ExamResultDao examResult);

    @Delete("delete from exam_result where resultID=#{resultID}")
    public boolean delResultByPaperID(Integer paperID);

}
