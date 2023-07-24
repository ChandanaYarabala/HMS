package com.crud.Hms.entity;

import jakarta.persistence.*;

import java.util.List;

@Entity
@Table(name = "Login")
public class Login {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int l_id;

    @ManyToOne(targetEntity = Patient.class)
    @JoinColumn(name = "id")
    private int id;
    @JoinColumn(name = "password")
    private String password;

    public Login(int l_id, int id, String password) {
        this.l_id = l_id;
        this.id = id;
        this.password = password;
    }

    public Login() {
    }

    public Login(int id, String password) {
    }

    public int getL_id() {
        return l_id;
    }

    public void setL_id(int l_id) {
        this.l_id = l_id;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}

