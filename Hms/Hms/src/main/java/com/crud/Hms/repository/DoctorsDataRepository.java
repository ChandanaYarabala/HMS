package com.crud.Hms.repository;

import com.crud.Hms.entity.DoctorsData;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DoctorsDataRepository extends JpaRepository<DoctorsData,Integer> {
}
