package com.crud.Hms.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "PatientList",uniqueConstraints = {@UniqueConstraint(columnNames = {"doctor_id"})})
public class PatientList {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int p_id;

    @ManyToOne
    @JoinColumn(name = "doctor_id")
    DoctorsData doctorsData;

    @ManyToOne
    Book book;

    public PatientList(int p_id, DoctorsData doctorsData, Book book) {
        this.p_id = p_id;
        this.doctorsData = doctorsData;
        this.book = book;
    }

    public PatientList() {
    }

    public int getP_id() {
        return p_id;
    }

    public void setP_id(int p_id) {
        this.p_id = p_id;
    }

    public DoctorsData getDoctorsData() {
        return doctorsData;
    }

    public void setDoctorsData(DoctorsData doctorsData) {
        this.doctorsData = doctorsData;
    }

    public Book getBook() {
        return book;
    }

    public void setBook(Book book) {
        this.book = book;
    }
}
