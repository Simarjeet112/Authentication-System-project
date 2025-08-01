package com.authportal.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    @GetMapping("/home11")
    public String home() {
        return "home";  // Loads home.jsp
    }
}
