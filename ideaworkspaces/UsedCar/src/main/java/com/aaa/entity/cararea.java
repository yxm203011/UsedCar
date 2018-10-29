package com.aaa.entity;

public class cararea {
    private int carareaid;
    private String carareaname;

    public cararea(int carareaid, String carareaname) {
        this.carareaid = carareaid;
        this.carareaname = carareaname;
    }

    public cararea() {
    }

    public int getCarareaid() {
        return carareaid;
    }

    public void setCarareaid(int carareaid) {
        this.carareaid = carareaid;
    }

    public String getCarareaname() {
        return carareaname;
    }

    public void setCarareaname(String carareaname) {
        this.carareaname = carareaname;
    }

    @Override
    public String toString() {
        return "cararea{" +
                "carareaid=" + carareaid +
                ", carareaname='" + carareaname + '\'' +
                '}';
    }
}
