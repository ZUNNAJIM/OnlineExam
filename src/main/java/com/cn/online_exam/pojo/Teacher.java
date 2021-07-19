package com.cn.online_exam.pojo;

import java.io.Serializable;

public class Teacher implements Serializable {

    private Integer teacherID;
    private String account;
    private String password;
    private String name;
    private Integer gender;
    private String mail;
    private Integer paperID;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getGender() {
        return gender;
    }

    public void setGender(Integer gender) {
        this.gender = gender;
    }

    public Teacher(Integer teacherID, String account, String password, String name, Integer gender, String mail, Integer paperID) {
        this.teacherID = teacherID;
        this.account = account;
        this.password = password;
        this.name = name;
        this.gender = gender;
        this.mail = mail;
        this.paperID = paperID;
    }


    public Integer getTeacherID() {
        return teacherID;
    }

    public void setTeacherID(Integer teacherID) {
        this.teacherID = teacherID;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public Integer getPaperID() {
        return paperID;
    }

    public void setPaperID(Integer paperID) {
        this.paperID = paperID;
    }

    @Override
    public String toString() {
        return "Teacher{" +
                "teacherID=" + teacherID +
                ", account='" + account + '\'' +
                ", password='" + password + '\'' +
                ", name='" + name + '\'' +
                ", gender=" + gender +
                ", mail='" + mail + '\'' +
                ", paperID=" + paperID +
                '}';
    }
}
