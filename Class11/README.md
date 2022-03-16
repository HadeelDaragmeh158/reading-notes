# Spring 

## Spring Bacis 
in this [link](https://spring.io/guides/gs/serving-web-content/) you can build an  application from secratch, you need to follow each step carefully

- Create a Web Controller
    package com.example.servingwebcontent;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class GreetingController {

	@GetMapping("/greeting")
	public String greeting(@RequestParam(name="name", required=false, defaultValue="World") String name, Model model) {
		model.addAttribute("name", name);
		return "greeting";
	}
    }
      <!DOCTYPE HTML>
    <html xmlns:th="http://www.thymeleaf.org">
    <head> 
      <title>Getting Started: Serving Web Content</title> 
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    </head>
    <body>
      <p th:text="'Hello, ' + ${name} + '!'" />
    </body>
    </html>

## Spring MVC and Thymeleaf: how to access data from templates
