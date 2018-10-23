package com.aaa.entity;


import java.util.Date;

public class userinfo {
    private int userinfoid;
    private String userinfophone;
    private String userinfopassword;
    private int positionid;
    private Integer userinfostate;
    private Date userinfouptime;
    private int userinfoupid;
    private position pset;


    public int getUserinfoid() {
        return userinfoid;
    }

    public void setUserinfoid(int userinfoid) {
        this.userinfoid = userinfoid;
    }

    public String getUserinfophone() {
        return userinfophone;
    }

    public void setUserinfophone(String userinfophone) {
        this.userinfophone = userinfophone;
    }

    public String getUserinfopassword() {
        return userinfopassword;
    }

    public void setUserinfopassword(String userinfopassword) {
        this.userinfopassword = userinfopassword;
    }

    public int getPositionid() {
        return positionid;
    }

    public void setPositionid(int positionid) {
        this.positionid = positionid;
    }

    public Integer getUserinfostate() {
        return userinfostate;
    }

    public void setUserinfostate(Integer userinfostate) {
        this.userinfostate = userinfostate;
    }

    public Date getUserinfouptime() {
        return userinfouptime;
    }

    public void setUserinfouptime(Date userinfouptime) {
        this.userinfouptime = userinfouptime;
    }

    public int getUserinfoupid() {
        return userinfoupid;
    }

    public void setUserinfoupid(int userinfoupid) {
        this.userinfoupid = userinfoupid;
    }

    public position getPset() {
        return pset;
    }

    public void setPset(position pset) {
        this.pset = pset;
    }

    public userinfo(int userinfoid, String userinfophone, String userinfopassword, int positionid, Integer userinfostate, Date userinfouptime, int userinfoupid, position pset) {
        this.userinfoid = userinfoid;
        this.userinfophone = userinfophone;
        this.userinfopassword = userinfopassword;
        this.positionid = positionid;
        this.userinfostate = userinfostate;
        this.userinfouptime = userinfouptime;
        this.userinfoupid = userinfoupid;
        this.pset = pset;
    }


    public userinfo() {
    }

    @Override
    public String toString() {
        return "userinfo{" +
                "userinfoid=" + userinfoid +
                ", userinfophone='" + userinfophone + '\'' +
                ", userinfopassword='" + userinfopassword + '\'' +
                ", positionid=" + positionid +
                ", userinfostate=" + userinfostate +
                ", userinfouptime=" + userinfouptime +
                ", userinfoupid=" + userinfoupid +
                ", pset=" + pset +
                '}';
    }
}
