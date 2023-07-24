package com.crud.Hms.entity;

import jakarta.persistence.*;

import java.math.BigInteger;
import java.util.Date;
import java.util.List;


@SequenceGenerator(name="seq", initialValue=20000, allocationSize=10000)
@Entity
@Table(name = "Patient")
public class Patient {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE,generator = "seq")
    private int id;
    private String title;
    private String name;
    private String gender;
    private int age;
    private String dob;
    private String bloodgrp;
    private BigInteger mobilenum;
    private String emailid;
    private String password;


   /* @OneToMany(mappedBy = "patient")
    private List<Location> locations;*/


    public Patient(int id, String title, String name, String gender, int age, String dob, String bloodgrp, BigInteger mobilenum, String emailid, String password) {
        this.id = id;
        this.title = title;
        this.name = name;
        this.gender = gender;
        this.age = age;
        this.dob = dob;
        this.bloodgrp = bloodgrp;
        this.mobilenum = mobilenum;
        this.emailid = emailid;
        this.password = password;
    }

    public Patient() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getBloodgrp() {
        return bloodgrp;
    }

    public void setBloodgrp(String bloodgrp) {
        this.bloodgrp = bloodgrp;
    }

    public BigInteger getMobilenum() {
        return mobilenum;
    }

    public void setMobilenum(BigInteger mobilenum) {
        this.mobilenum = mobilenum;
    }

    public String getEmailid() {
        return emailid;
    }

    public void setEmailid(String emailid) {
        this.emailid = emailid;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
