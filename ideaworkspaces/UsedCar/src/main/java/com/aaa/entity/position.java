package com.aaa.entity;

import java.util.Date;

public class position {
    private int positionid;
    private String positionname;
    private Date positionuptime;
    private int userinfoid;
    private String positiondescribe;

    public int getPositionid() {
        return positionid;
    }

    public void setPositionid(int positionid) {
        this.positionid = positionid;
    }

    public String getPositionname() {
        return positionname;
    }

    public void setPositionname(String positionname) {
        this.positionname = positionname;
    }

    public Date getPositionuptime() {
        return positionuptime;
    }

    public void setPositionuptime(Date positionuptime) {
        this.positionuptime = positionuptime;
    }

    public int getUserinfoid() {
        return userinfoid;
    }

    public void setUserinfoid(int userinfoid) {
        this.userinfoid = userinfoid;
    }

    public String getPositiondescribe() {
        return positiondescribe;
    }

    public void setPositiondescribe(String positiondescribe) {
        this.positiondescribe = positiondescribe;
    }

    public position(int positionid, String positionname, Date positionuptime, int userinfoid, String positiondescribe) {
        this.positionid = positionid;
        this.positionname = positionname;
        this.positionuptime = positionuptime;
        this.userinfoid = userinfoid;
        this.positiondescribe = positiondescribe;
    }

    public position() {
    }

    @Override
    public String toString() {
        return "position{" +
                "positionid=" + positionid +
                ", positionname='" + positionname + '\'' +
                ", positionuptime=" + positionuptime +
                ", userinfoid=" + userinfoid +
                ", positiondescribe='" + positiondescribe + '\'' +
                '}';
    }
}
