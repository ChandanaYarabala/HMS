package com.crud.Hms.entity;

import jakarta.persistence.*;



@Entity
@Table(name = "DoctorsData")
public class DoctorsData {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int doctor_id;
    private String doctorname;
    private String speciality;
    private String hospitalname;
    private String password;

    public DoctorsData(int doctor_id, String doctorname, String speciality, String hospitalname, String password) {
        this.doctor_id = doctor_id;
        this.doctorname = doctorname;
        this.speciality = speciality;
        this.hospitalname = hospitalname;
        this.password = password;
    }

    public DoctorsData() {
    }

    public int getDoctor_id() {
        return doctor_id;
    }

    public void setDoctor_id(int doctor_id) {
        this.doctor_id = doctor_id;
    }

    public String getDoctorname() {
        return doctorname;
    }

    public void setDoctorname(String doctorname) {
        this.doctorname = doctorname;
    }

    public String getSpeciality() {
        return speciality;
    }

    public void setSpeciality(String speciality) {
        this.speciality = speciality;
    }

    public String getHospitalname() {
        return hospitalname;
    }

    public void setHospitalname(String hospitalname) {
        this.hospitalname = hospitalname;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
