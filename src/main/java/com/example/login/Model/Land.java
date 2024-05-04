package com.example.login.Model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;

import java.sql.Date;

@Entity
public class Land {

    @jakarta.persistence.Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long Id;
    private String registration_office;
    private String district;
    private String state;
    private String owner;
    private String pin;
    private String type;
    private String subdivision;
    private String road;
    private String muncipal;

    @Override
    public String toString() {
        return "Land{" +
                "Id=" + Id +
                ", registration_office='" + registration_office + '\'' +
                ", district='" + district + '\'' +
                ", state='" + state + '\'' +
                ", owner='" + owner + '\'' +
                ", pin='" + pin + '\'' +
                ", type='" + type + '\'' +
                ", subdivision='" + subdivision + '\'' +
                ", road='" + road + '\'' +
                ", muncipal='" + muncipal + '\'' +
                ", price='" + price + '\'' +
                ", date=" + date +
                ", status=" + status +
                '}';
    }

    private String price;
    private Date date;

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    private String status;

    public Long getId() {
        return Id;
    }

    public void setId(Long id) {
        Id = id;
    }

    public String getRegistration_office() {
        return registration_office;
    }

    public void setRegistration_office(String registration_office) {
        this.registration_office = registration_office;
    }

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getOwner() {
        return owner;
    }

    public void setOwner(String owner) {
        this.owner = owner;
    }

    public String getPin() {
        return pin;
    }

    public void setPin(String pin) {
        this.pin = pin;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getSubdivision() {
        return subdivision;
    }

    public void setSubdivision(String subdivision) {
        this.subdivision = subdivision;
    }

    public String getRoad() {
        return road;
    }

    public void setRoad(String road) {
        this.road = road;
    }

    public String getMuncipal() {
        return muncipal;
    }

    public void setMuncipal(String muncipal) {
        this.muncipal = muncipal;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }



    public Land(Long id, String registration_office, String district, String state, String owner, String pin, String type, String subdivision, String road, String muncipal, String price, Date date) {
        Id = id;
        this.registration_office = registration_office;
        this.district = district;
        this.state = state;
        this.owner = owner;
        this.pin = pin;
        this.type = type;
        this.subdivision = subdivision;
        this.road = road;
        this.muncipal = muncipal;
        this.price = price;
        this.date = date;
        this.status=status;
    }


    public Land() {
        this.status="pending";
    }


}
