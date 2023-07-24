package com.crud.Hms.service;

import com.crud.Hms.entity.PatientList;
import com.crud.Hms.repository.PatientListRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PatientListService {

    @Autowired
    private PatientListRepo patientListRepo;


    public PatientList insert(PatientList patientList){
        return patientListRepo.save(patientList);
    }
}
