package com.crud.Hms.service;

import com.crud.Hms.entity.ContactUs;
import com.crud.Hms.repository.ContactUsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ContactUsService {
    @Autowired
    private ContactUsRepository contactUsRepository;

    public ContactUs insert(ContactUs contactUs){
        return contactUsRepository.save(contactUs);
    }
}
