# Spring 

## Spring Bacis 
in this [link](https://spring.io/guides/gs/serving-web-content/) you can build an  application from secratch, you need to follow each step carefully

- Create a Web Controller

	   	 package com.example.servingwebcontent
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
    
- HTML

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

@Controller : are classes that are responsible for preparing a model map with data and selecting a view to be rendered.

#### Spring model attributes
"Spring MVC calls the pieces of data that can be accessed during the execution of views model attributes. The equivalent term in Thymeleaf language is context variables."
There are several ways of adding model attributesز
**Spring EL (Spring Expression Language) is a language that supports querying and manipulating an object graph at runtime.**


#### Request parameters
#### Session attributes
#### ServletContext attributes
#### Spring beans
