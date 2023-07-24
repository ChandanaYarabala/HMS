package com.crud.Hms.entity;

import jakarta.persistence.*;

@Entity

@Table(name = "Location")
public class Location {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)

    private int lo_id;
    private String district;
    private String area;
    private String pincode;

    @ManyToOne
    Patient patient;

    public Location(int lo_id, String district, String area, String pincode, Patient patient) {
        this.lo_id = lo_id;
        this.district = district;
        this.area = area;
        this.pincode = pincode;
        this.patient = patient;
    }

    public Location() {
    }

    public int getLo_id() {
        return lo_id;
    }

    public void setLo_id(int lo_id) {
        this.lo_id = lo_id;
    }

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public String getPincode() {
        return pincode;
    }

    public void setPincode(String pincode) {
        this.pincode = pincode;
    }

    public Patient getPatient() {
        return patient;
    }

    public void setPatient(Patient patient) {
        this.patient = patient;
    }
}
