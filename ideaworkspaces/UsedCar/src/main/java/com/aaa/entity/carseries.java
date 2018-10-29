package com.aaa.entity;

public class carseries {
    private int carseriesid;
    private String carseriesname;
    private int carbrandid;
    private carbrand car;

    public carseries(int carseriesid, String carseriesname, int carbrandid, carbrand car) {
        this.carseriesid = carseriesid;
        this.carseriesname = carseriesname;
        this.carbrandid = carbrandid;
        this.car = car;
    }

    public carseries() {
    }

    public int getCarseriesid() {
        return carseriesid;
    }

    public void setCarseriesid(int carseriesid) {
        this.carseriesid = carseriesid;
    }

    public String getCarseriesname() {
        return carseriesname;
    }

    public void setCarseriesname(String carseriesname) {
        this.carseriesname = carseriesname;
    }

    public int getCarbrandid() {
        return carbrandid;
    }

    public void setCarbrandid(int carbrandid) {
        this.carbrandid = carbrandid;
    }

    public carbrand getCar() {
        return car;
    }

    public void setCar(carbrand car) {
        this.car = car;
    }

    @Override
    public String toString() {
        return "carseries{" +
                "carseriesid=" + carseriesid +
                ", carseriesname='" + carseriesname + '\'' +
                ", carbrandid=" + carbrandid +
                ", car=" + car +
                '}';
    }
}
