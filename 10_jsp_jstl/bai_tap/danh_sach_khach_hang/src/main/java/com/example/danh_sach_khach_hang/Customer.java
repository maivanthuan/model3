package com.example.danh_sach_khach_hang;

public class Customer {
    private String name;
    private String birthday;
    private String address;
    private String urlImg;

    public Customer() {
    }

    public Customer(String name, String birthday, String address, String rrlImg) {
        this.name = name;
        this.birthday = birthday;
        this.address = address;
        this.urlImg = rrlImg;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getUrlImg() {
        return urlImg;
    }

    public void setUrlImg(String urlImg) {
        this.urlImg = urlImg;
    }
}

