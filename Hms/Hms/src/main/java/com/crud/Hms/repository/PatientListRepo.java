package com.crud.Hms.repository;

import com.crud.Hms.entity.PatientList;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PatientListRepo extends JpaRepository<PatientList,Integer> {
}
