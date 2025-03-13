package org.webapplication.backend.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.webapplication.backend.models.User;
import org.webapplication.services.RegistrationService;

@Controller
public class LoginController {

    @Autowired
    @Qualifier("registrationService")
    RegistrationService registrationService;


    @GetMapping("/login")
    private String getLoginPage(){
        return "WEB-INF/views/mainvews/regviews/login.jsp";
    }

    @GetMapping("/registration")
    private String regButton(Model model){
        return "WEB-INF/views/mainvews/regviews/registr.jsp";
    }

    @PostMapping("/registration")
    private String getInfo(@RequestParam("firstName") String firstName,
                           @RequestParam("lastName") String lastName,
                           @RequestParam("email") String email,
                           @RequestParam("phone") String phone,
                           @RequestParam("password") String password,
                           Model model){
        return registrationService.registration(firstName,lastName,email,phone,password);
    }

}
