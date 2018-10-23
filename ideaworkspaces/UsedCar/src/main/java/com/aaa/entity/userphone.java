package com.aaa.entity;

public class userphone {

    private int  userphoneid;
    private String userphones;

    public int getUserphoneid() {
        return userphoneid;
    }

    public void setUserphoneid(int userphoneid) {
        this.userphoneid = userphoneid;
    }

    public String getUserphones() {
        return userphones;
    }

    public void setUserphones(String userphones) {
        this.userphones = userphones;
    }

    @Override
    public String toString() {
        return "userphone{" +
                "userphoneid=" + userphoneid +
                ", userphones='" + userphones + '\'' +
                '}';
    }

    public userphone(int userphoneid, String userphones) {
        this.userphoneid = userphoneid;
        this.userphones = userphones;
    }

    public userphone() {
    }
}
