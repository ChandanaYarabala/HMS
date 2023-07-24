package com.crud.Hms.service;

import com.crud.Hms.entity.Login;
import com.crud.Hms.entity.Patient;
import com.crud.Hms.repository.LoginRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginService {
    @Autowired
    private LoginRepository loginRepository;

    /*public Login insert(Patient patient){
        return loginRepository.save(new Login());
    }*/

    public Login insert(Login login){
        return loginRepository.save(login);
    }



}
