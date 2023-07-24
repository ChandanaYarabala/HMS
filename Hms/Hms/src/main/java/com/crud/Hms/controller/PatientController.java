package com.crud.Hms.controller;

import com.crud.Hms.entity.Book;
import com.crud.Hms.entity.Department;
import com.crud.Hms.entity.Location;
import com.crud.Hms.entity.Patient;
import com.crud.Hms.repository.LoginRepository;
import com.crud.Hms.repository.PatientRepository;
import com.crud.Hms.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;


import java.util.List;
@SessionAttributes({"user","loc","details","dp"})

@Controller
public class PatientController {
    @Autowired
    private PatientService patientService;
    @Autowired
    private PatientRepository patientRepository;
    @Autowired
    private LoginService loginService;
    @Autowired
    private LocationService locationService;
    @Autowired
    private DepartmentService departmentService;
    @Autowired
    private BookService bookService;
    @Autowired
    private LoginRepository loginRepository;

    //patient list
    @GetMapping("/chandu1")
    public String get(Patient patient,Model model){
        model.addAttribute("data",patientService.findAll());
        return "chandu";
    }


    //for opening login page
    @GetMapping("/login")
    public String login(){
        return "Login";
    }


    //for opening signup page
    @GetMapping("/signup")
    public String view(){
        return "SignUp";
    }

    //for inserting values into the signup page
    @PostMapping("/signup")
    public String insert(@ModelAttribute Patient patient, Model model){
        patientService.insert(patient);
        model.addAttribute("patient",patient);
        /*model.addAttribute("details",patient);*/
        return "patientid";
    }

    //for login verification

    @GetMapping("/login1")
    public String location(@RequestParam("id") String id, @RequestParam("password") String password, Model map, Patient patient,Model model){
        List<Patient> pa= patientService.findAll();
        boolean flag=false;
        for(Patient b:pa){
            int i11= b.getId();
            String i1=String.valueOf(i11);
            String i2=b.getPassword();
            if(id.equals(i1) && password.equals(i2)){
                flag=true;
                map.addAttribute("user", patient);
                model.addAttribute("details",patientService.getById(patient.getId()));
               // m.addAttribute("dp",departmentService.getById(patient.getId()));

            }
        }
        if(flag){
            return "Choice";

        }
        return  "error";
    }

    //for viewslot page
    @GetMapping("/viewslot")
    public String vs(@ModelAttribute("user") Patient patient,Model model){
        model.addAttribute("user",patient);
       String s= String.valueOf(departmentService.getById(patient.getId()));
        System.out.println(s);

        return "ViewSlot";
    }








    //after verifying ,for opening location page

    @GetMapping("/location")
    public String loc(){
        return "Location";
    }

    //for storing the data into the location page and after that department page will shown
    @GetMapping("/dep")
    public String view1(@ModelAttribute("user") Patient patient,@ModelAttribute Location location,Model map){
        Patient p = patientService.getById(patient.getId());
        location.setPatient(p);
        locationService.insert(location);
        map.addAttribute("loc",location);
        return "Department";
    }

    //for storing the data into the department page after that bookslot page will shown

    @GetMapping("/app")
    public String depp(@ModelAttribute("user") Patient patient, @ModelAttribute Department department,@ModelAttribute("loc") Location location,Model map){
        Patient p=patientService.getById(patient.getId());
        department.setPatient(p);
        department.setLocation(location);
        departmentService.insert(department);
        map.addAttribute("dp",department);
        return "BookSlot";
    }

    //for storing the data into the bookslot page after that end page will shown

    @GetMapping("/end")
    public String book(@ModelAttribute("user") Patient patient, @ModelAttribute Book book){
        Patient p=patientService.getById(patient.getId());
        book.setPatient(p);
       /* book.setDepartment(department);*/
        bookService.insert(book);

        return "end";
    }
}
