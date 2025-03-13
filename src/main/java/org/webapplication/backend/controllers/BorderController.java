package org.webapplication.backend.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.webapplication.backend.models.User;
import org.webapplication.repositories.LoginRegRepository;

@Controller
public class BorderController {


    @GetMapping("/account")
    private String accountPage(){
        return "WEB-INF/views/mainvews/accountviews/accaount.jsp";
    }




}
