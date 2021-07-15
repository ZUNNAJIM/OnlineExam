package com.cn.online_exam.pojo;

import java.io.Serializable;

/**
 * 管理员类.
 */
public class Administrator implements Serializable {
    /**
     * adminID.
     */
    private Integer adminID;
    /**
     * account.
     */
    private String account;
    /**
     * password.
     */
    private String password;

    /**
     * Constructor.
     * @param adminID   adminID.
     * @param account   account.
     * @param password  password.
     */
    public Administrator(Integer adminID, String account, String password) {
        this.adminID = adminID;
        this.account = account;
        this.password = password;
    }

    public Integer getAdminID() {
        return adminID;
    }

    public void setAdminID(Integer adminID) {
        this.adminID = adminID;
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

    @Override
    public String toString() {
        return "Administrator{" +
                "adminID=" + adminID +
                ", account='" + account + '\'' +
                ", password='" + password + '\'' +
                '}';
    }
}
