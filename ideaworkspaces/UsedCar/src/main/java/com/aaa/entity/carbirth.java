package com.aaa.entity;

public class carbirth {
    private int carbirthid;
    private String carbirthname;
    private int carseriesid;
    private carseries car;

    public carbirth(int carbirthid, String carbirthname, int carseriesid, carseries car) {
        this.carbirthid = carbirthid;
        this.carbirthname = carbirthname;
        this.carseriesid = carseriesid;
        this.car = car;
    }

    public carbirth() {
    }

    public int getCarbirthid() {
        return carbirthid;
    }

    public void setCarbirthid(int carbirthid) {
        this.carbirthid = carbirthid;
    }

    public String getCarbirthname() {
        return carbirthname;
    }

    public void setCarbirthname(String carbirthname) {
        this.carbirthname = carbirthname;
    }

    public int getCarseriesid() {
        return carseriesid;
    }

    public void setCarseriesid(int carseriesid) {
        this.carseriesid = carseriesid;
    }

    public carseries getCar() {
        return car;
    }

    public void setCar(carseries car) {
        this.car = car;
    }

    @Override
    public String toString() {
        return "carbirth{" +
                "carbirthid=" + carbirthid +
                ", carbirthname='" + carbirthname + '\'' +
                ", carseriesid=" + carseriesid +
                ", car=" + car +
                '}';
    }
}
