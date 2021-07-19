package com.cn.online_exam.dao;

import com.cn.online_exam.pojo.Question;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.net.Inet4Address;
import java.util.List;

@Repository
public interface QuestionDao {

    @Select("select * from question")
    public List<Question> findAllQuestion();

    @Update("update question set ID=#{ID}, questionID=#{questionID}, question=#{question}, answer={#answer}, " +
    "option_a=#{option_a}，option_b=#{option_b}，option_c=#{option_c}，option_d=#{option_d}，analysis=#{analysis}, " +
    "point=#{point}, difficulty=#{difficulty}, exam_name=#{exam_name}")
    public boolean updateQuestion(Question question);

    @Insert("insert into question(ID, questionID, question, answer, option_a, " +
            "option_b, option_c, option_d, analysis, point, difficulty, exam_name) " +
            "values(#{ID}, #{questionID}, #{question}, #{answer}, #{option_a}, #{option_b}, " +
            "#{option_c}, #{option_d}, #{analysis}, #{point}, #{difficulty}, #{exam_name}")
    public boolean insertQuestion(Question question);

    @Delete("delete from question where ID=#{ID}")
    public boolean delQuestion(Integer ID);

}
