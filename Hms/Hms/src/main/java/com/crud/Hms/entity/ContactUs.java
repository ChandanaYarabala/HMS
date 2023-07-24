package com.crud.Hms.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "ContactUs")
public class ContactUs {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int c_id;
    private String name;
    private String emailid;
    private String contactnum;
    private String loc;
    private String spe;
    private String query;

    public ContactUs(int c_id, String name, String emailid, String contactnum, String loc, String spe, String query) {
        this.c_id = c_id;
        this.name = name;
        this.emailid = emailid;
        this.contactnum = contactnum;
        this.loc = loc;
        this.spe = spe;
        this.query = query;
    }

    public ContactUs() {
    }

    public int getC_id() {
        return c_id;
    }

    public void setC_id(int c_id) {
        this.c_id = c_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmailid() {
        return emailid;
    }

    public void setEmailid(String emailid) {
        this.emailid = emailid;
    }

    public String getContactnum() {
        return contactnum;
    }

    public void setContactnum(String contactnum) {
        this.contactnum = contactnum;
    }

    public String getLoc() {
        return loc;
    }

    public void setLoc(String loc) {
        this.loc = loc;
    }

    public String getSpe() {
        return spe;
    }

    public void setSpe(String spe) {
        this.spe = spe;
    }

    public String getQuery() {
        return query;
    }

    public void setQuery(String query) {
        this.query = query;
    }
}
