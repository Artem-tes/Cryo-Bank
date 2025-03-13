package org.webapplication.backend.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

    @GetMapping
    private String mainView(){
        return "WEB-INF/views/mainvews/main.jsp";
    }

    @GetMapping("/hello")
    private String sayHello(){
        return "WEB-INF/views/mainvews/index.jsp";
    }


}
