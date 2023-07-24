package com.crud.Hms.service;

import com.crud.Hms.entity.Department;
import com.crud.Hms.repository.DepartmentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DepartmentService {
    @Autowired
    private DepartmentRepository departmentRepository;

    public Department insert(Department department){
        return departmentRepository.save(department);
    }

    public Department getById(int id){
        return departmentRepository.getById(id);
    }
    public List<Department> findAll(){
        return  departmentRepository.findAll();
    }


}
