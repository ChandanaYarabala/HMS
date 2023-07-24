package com.crud.Hms.service;

import com.crud.Hms.entity.DoctorsData;
import com.crud.Hms.repository.DoctorsDataRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DoctorsDataService {
    @Autowired
    private DoctorsDataRepository doctorsDataRepository;

    public int getById(Integer id){
        return doctorsDataRepository.getById(id).getDoctor_id();
    }
    public List<DoctorsData> findAll(){
        return doctorsDataRepository.findAll();
    }


}
