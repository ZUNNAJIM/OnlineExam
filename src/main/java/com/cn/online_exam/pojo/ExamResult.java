package com.cn.online_exam.pojo;

import java.io.Serializable;
import java.util.Date;

public class ExamResult implements Serializable {

    private Integer resultID;
    private Integer studentID;
    private Integer paperID;
    private Date date;
    private Integer result;

    public ExamResult()
    {
        super();
    }

    public ExamResult(Integer resultID, Integer studentID, Integer paperID, Date date, Integer result) {
        this.resultID = resultID;
        this.studentID = studentID;
        this.paperID = paperID;
        this.date = date;
        this.result = result;
    }

    public Integer getResultID() {
        return resultID;
    }

    public void setResultID(Integer resultID) {
        this.resultID = resultID;
    }

    public Integer getStudentID() {
        return studentID;
    }

    public void setStudentID(Integer studentID) {
        this.studentID = studentID;
    }

    public Integer getPaperID() {
        return paperID;
    }

    public void setPaperID(Integer paperID) {
        this.paperID = paperID;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Integer getResult() {
        return result;
    }

    public void setResult(Integer result) {
        this.result = result;
    }

    @Override
    public String toString() {
        return "ExamResult{" +
                "resultID=" + resultID +
                ", studentID=" + studentID +
                ", paperID=" + paperID +
                ", date=" + date +
                ", result=" + result +
                '}';
    }
}
