package com.crud.Hms.service;

import com.crud.Hms.entity.Login;
import com.crud.Hms.entity.Patient;
import com.crud.Hms.repository.PatientRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PatientServiceImpl implements PatientService {
    @Autowired
    private PatientRepository patientRepository;
    @Override
    public Patient insert(Patient patient) {
        return patientRepository.save(patient);
    }

    @Override
    public List<Patient> findAll() {
        return patientRepository.findAll();
    }

    @Override
    public Patient getById(int id) {
        return patientRepository.getById(id);
    }


}
