package com.crud.Hms.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "Department")
public class Department {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int ba_id;
    private String Hospital;
    private String Speciality;
    private String Doctor;
    private String appdate;

    @ManyToOne
    Patient patient;
    @ManyToOne
    Location location;

    public Department(int ba_id, String hospital, String speciality, String doctor, String appdate, Patient patient, Location location) {
        this.ba_id = ba_id;
        Hospital = hospital;
        Speciality = speciality;
        Doctor = doctor;
        this.appdate = appdate;
        this.patient = patient;
        this.location = location;
    }

    public Department() {
    }

    public int getBa_id() {
        return ba_id;
    }

    public void setBa_id(int ba_id) {
        this.ba_id = ba_id;
    }

    public String getHospital() {
        return Hospital;
    }

    public void setHospital(String hospital) {
        Hospital = hospital;
    }

    public String getSpeciality() {
        return Speciality;
    }

    public void setSpeciality(String speciality) {
        Speciality = speciality;
    }

    public String getDoctor() {
        return Doctor;
    }

    public void setDoctor(String doctor) {
        Doctor = doctor;
    }

    public String getAppdate() {
        return appdate;
    }

    public void setAppdate(String appdate) {
        this.appdate = appdate;
    }

    public Patient getPatient(int id) {
        return patient;
    }

    public void setPatient(Patient patient) {
        this.patient = patient;
    }

    public Location getLocation() {
        return location;
    }

    public void setLocation(Location location) {
        this.location = location;
    }
}
