package com.cn.online_exam.pojo;

import java.io.Serializable;

public class Question implements Serializable {

    private Integer ID;
    private Integer questionID;
    private String question;
    private String answer;
    private String option_a;
    private String option_b;
    private String option_c;
    private String option_d;
    private String analysis;
    private String point;
    private String difficulty;
    private String exam_name;

    public Question(Integer ID, Integer questionID,
                    String question, String answer, String option_a, String option_b,
                    String option_c, String option_d, String analysis,
                    String point, String difficulty, String exam_name) {
        this.ID = ID;
        this.questionID = questionID;
        this.question = question;
        this.answer = answer;
        this.option_a = option_a;
        this.option_b = option_b;
        this.option_c = option_c;
        this.option_d = option_d;
        this.analysis = analysis;
        this.point = point;
        this.difficulty = difficulty;
        this.exam_name = exam_name;
    }

    public Integer getID() {
        return ID;
    }

    public void setID(Integer ID) {
        this.ID = ID;
    }

    public Integer getQuestionID() {
        return questionID;
    }

    public void setQuestionID(Integer questionID) {
        this.questionID = questionID;
    }

    public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
    }

    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }

    public String getOption_a() {
        return option_a;
    }

    public void setOption_a(String option_a) {
        this.option_a = option_a;
    }

    public String getOption_b() {
        return option_b;
    }

    public void setOption_b(String option_b) {
        this.option_b = option_b;
    }

    public String getOption_c() {
        return option_c;
    }

    public void setOption_c(String option_c) {
        this.option_c = option_c;
    }

    public String getOption_d() {
        return option_d;
    }

    public void setOption_d(String option_d) {
        this.option_d = option_d;
    }

    public String getAnalysis() {
        return analysis;
    }

    public void setAnalysis(String analysis) {
        this.analysis = analysis;
    }

    public String getPoint() {
        return point;
    }

    public void setPoint(String point) {
        this.point = point;
    }

    public String getDifficulty() {
        return difficulty;
    }

    public void setDifficulty(String difficulty) {
        this.difficulty = difficulty;
    }

    public String getExam_name() {
        return exam_name;
    }

    public void setExam_name(String exam_name) {
        this.exam_name = exam_name;
    }

    @Override
    public String toString() {
        return "Question{" +
                "ID=" + ID +
                ", questionID=" + questionID +
                ", question='" + question + '\'' +
                ", answer='" + answer + '\'' +
                ", option_a='" + option_a + '\'' +
                ", option_b='" + option_b + '\'' +
                ", option_c='" + option_c + '\'' +
                ", option_d='" + option_d + '\'' +
                ", analysis='" + analysis + '\'' +
                ", point='" + point + '\'' +
                ", difficulty='" + difficulty + '\'' +
                ", paperID=" + exam_name +
                '}';
    }
}
