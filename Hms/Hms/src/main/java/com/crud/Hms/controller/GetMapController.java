package com.crud.Hms.controller;

import com.crud.Hms.entity.*;
import com.crud.Hms.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@SessionAttributes("doc")
@Controller
public class GetMapController {
    @Autowired
    private DoctorsDataService doctorsDataService;
    @Autowired
    private PatientListService patientListService;

    @Autowired
    private BookService bookService;
    @Autowired
    private PatientService patientService;
    @Autowired
    private ContactUsService contactUsService;

    @GetMapping("/DoctorsLogin")
    public String doc(){
        return "DoctorsLogin";
    }
    @GetMapping("/validate")
    public String validate(@RequestParam("doctor_id") String doctor_id, @RequestParam("password") String password, DoctorsData doctorsData, Model map){
        List<DoctorsData> doctorsData1=doctorsDataService.findAll();
        boolean flag=false;
        for(DoctorsData d:doctorsData1){
            int i11=d.getDoctor_id();
            String i1=String.valueOf(i11);
            String i2=d.getPassword();
            if(doctor_id.equals(i1) && password.equals(i2)){
                flag=true;
                map.addAttribute("doc",doctorsData);
            }
        }
        if(flag){
            return "DoctorValidation";
        }

        return "error";
    }

    /*@GetMapping("/pl")
    public String hi(@ModelAttribute("doc") DoctorsData doctorsData, @ModelAttribute("book")Book book, PatientList patientList,Patient patient){
        Book b=bookService.getByID(patient.getId());
        patientList.setBook(b);
        patientList.setDoctorsData(doctorsData);
        patientListService.insert(patientList);
        return "chandu";
    }*/


    @GetMapping("/patienthistory")
    public String pa(){
        return "PatientHistory";
    }

    @GetMapping("/patientrecords1")
    public String pr(){
        return "PatientRecords1";
    }










    //for contactpage opening
    @GetMapping("/contact")
    public String op(){
        return "ContactUs";
    }
    @PostMapping("/contact")
    public String save(@ModelAttribute ContactUs contactUs){
        contactUsService.insert(contactUs);
        return "query";
    }

    @GetMapping("/doctorview")
    public String doctor(){
        return "doctorviewslot";
    }
}

