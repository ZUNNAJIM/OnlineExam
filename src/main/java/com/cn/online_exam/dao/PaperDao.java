package com.cn.online_exam.dao;

import com.cn.online_exam.pojo.Paper;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PaperDao {

    @Select("select * from paper")
    public List<Paper> findAllPaper();

    @Update("update paper set paperID=#{paperID}, major=#{major}, exam_name=#[exam_name}, " +
            "start_date=#{start_date}, end_date=#{end_date}, exam_time=#[exam_time} where paperID=#{paperID}")
    public boolean updatePaper(Paper paper);

    @Select("select * from paper where paperID=#{paperID}")
    public Paper findByPaperID(Integer paperID);

    @Delete("delete from paper where paperID=#{paperID}")
    public boolean delPaper(Integer paperID);

    @Insert("insert into paper(paperID, major, exam_name, start_date, end_date, exam_time) " +
            "values(#{paperID},#{major}, #{exam_name}, #{start_date}, #{end_date}, #{exam_time})")
    public boolean insertPaper(Paper paper);
}
