package com.example.docker_session.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/api")
public class ApiController {

    @GetMapping("/hello")
    public String helloMethod(){
        return "index";
    }
}
