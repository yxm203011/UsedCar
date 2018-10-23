package com.aaa.entity;

public class carbrand {
    private int carbrandid;
    private String carbrandname;
    private String carbrandicon;
    private String carbrandlogogram;

    public carbrand(int carbrandid, String carbrandname, String carbrandicon, String carbrandlogogram) {
        this.carbrandid = carbrandid;
        this.carbrandname = carbrandname;
        this.carbrandicon = carbrandicon;
        this.carbrandlogogram = carbrandlogogram;
    }

    public carbrand() {
    }

    public int getCarbrandid() {
        return carbrandid;
    }

    public void setCarbrandid(int carbrandid) {
        this.carbrandid = carbrandid;
    }

    public String getCarbrandname() {
        return carbrandname;
    }

    public void setCarbrandname(String carbrandname) {
        this.carbrandname = carbrandname;
    }

    public String getCarbrandicon() {
        return carbrandicon;
    }

    public void setCarbrandicon(String carbrandicon) {
        this.carbrandicon = carbrandicon;
    }

    public String getCarbrandlogogram() {
        return carbrandlogogram;
    }

    public void setCarbrandlogogram(String carbrandlogogram) {
        this.carbrandlogogram = carbrandlogogram;
    }

    @Override
    public String toString() {
        return "carbrand{" +
                "carbrandid=" + carbrandid +
                ", carbrandname='" + carbrandname + '\'' +
                ", carbrandicon='" + carbrandicon + '\'' +
                ", carbrandlogogram='" + carbrandlogogram + '\'' +
                '}';
    }
}
