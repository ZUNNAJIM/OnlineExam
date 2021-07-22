package com.cn.online_exam.pojo;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.Date;

public class Paper implements Serializable {

    private Integer paperID;
    private String major;
    private String exam_name;
    private Date start_date;
    private Date end_date;
    private Integer exam_time;

    public Paper() {
        super();
    }
    public Paper(Integer paperID, String major, String exam_name, Date start_date, Date end_date, Integer exam_time) {
        this.paperID = paperID;
        this.major = major;
        this.exam_name = exam_name;
        this.start_date = start_date;
        this.end_date = end_date;
        this.exam_time = exam_time;
    }

    public Integer getPaperID() {
        return paperID;
    }

    public void setPaperID(Integer paperID) {
        this.paperID = paperID;
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }

    public String getExam_name() {
        return exam_name;
    }

    public void setExam_name(String exam_name) {
        this.exam_name = exam_name;
    }

    public Date getStart_date() {
        return start_date;
    }

    public void setStart_date(Date start_date) {
        this.start_date = start_date;
    }

    public Date getEnd_date() {
        return end_date;
    }

    public void setEnd_date(Date end_date) {
        this.end_date = end_date;
    }

    public Integer getExam_time() {
        return exam_time;
    }

    public void setExam_time(Integer exam_time) {
        this.exam_time = exam_time;
    }

    @Override
    public String toString() {
        return "Paper{" +
                "paperID=" + paperID +
                ", major='" + major + '\'' +
                ", exam_name='" + exam_name + '\'' +
                ", start_date=" + start_date +
                ", end_date=" + end_date +
                ", exam_time=" + exam_time +
                '}';
    }
}
