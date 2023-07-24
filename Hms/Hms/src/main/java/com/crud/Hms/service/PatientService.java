package com.crud.Hms.service;

import com.crud.Hms.entity.Login;
import com.crud.Hms.entity.Patient;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface PatientService {
    public Patient insert(Patient patient);
    public List<Patient> findAll();

    public Patient getById(int id);
}
