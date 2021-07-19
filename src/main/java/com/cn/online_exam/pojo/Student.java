package com.cn.online_exam.pojo;

import java.io.Serializable;

public class Student implements Serializable {

    private Integer studentID;
    private String account;
    private String password;
    private String name;
    private Integer gender;
    private String major;
    private Integer grade;

    public Student(Integer studentID, String account, String password, String name, Integer gender, String major, Integer grade) {
        this.studentID = studentID;
        this.account = account;
        this.password = password;
        this.name = name;
        this.gender = gender;
        this.major = major;
        this.grade = grade;
    }

    public Integer getStudentID() {
        return studentID;
    }

    public void setStudentID(Integer studentID) {
        this.studentID = studentID;
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

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }

    public Integer getGrade() {
        return grade;
    }

    public void setGrade(Integer grade) {
        this.grade = grade;
    }

    @Override
    public String toString() {
        return "Student{" +
                "studentID=" + studentID +
                ", account='" + account + '\'' +
                ", password='" + password + '\'' +
                ", name='" + name + '\'' +
                ", gender=" + gender +
                ", major='" + major + '\'' +
                ", grade=" + grade +
                '}';
    }
}
