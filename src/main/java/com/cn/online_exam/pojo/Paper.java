package com.cn.online_exam.pojo;

import java.io.Serializable;

public class Paper implements Serializable {

    private Integer paperID;
    private String major;

    public Paper(Integer paperID, String major) {
        this.paperID = paperID;
        this.major = major;
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

    @Override
    public String toString() {
        return "Paper{" +
                "paperID=" + paperID +
                ", major='" + major + '\'' +
                '}';
    }
}
