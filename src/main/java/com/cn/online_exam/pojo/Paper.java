package com.cn.online_exam.pojo;

import java.io.Serializable;
import java.util.Date;

public class Paper implements Serializable {

    private Integer paperID;
    private String major;
    private String exam_name;
    private Date start_time;
    private Date end_time;
    private Integer exam_time;

    public Paper(Integer paperID, String major, String exam_name, Date start_time, Date end_time, Integer exam_time) {
        this.paperID = paperID;
        this.major = major;
        this.exam_name = exam_name;
        this.start_time = start_time;
        this.end_time = end_time;
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

    public Date getStart_time() {
        return start_time;
    }

    public void setStart_time(Date start_time) {
        this.start_time = start_time;
    }

    public Date getEnd_time() {
        return end_time;
    }

    public void setEnd_time(Date end_time) {
        this.end_time = end_time;
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
                ", start_time=" + start_time +
                ", end_time=" + end_time +
                ", exam_time=" + exam_time +
                '}';
    }
}
