package com.ayan.flightreservation.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import jakarta.servlet.http.HttpSession;

@Controller
public class viewsController {
	
	@RequestMapping("/home")
	public String home () {
		return "homePage";
	}
	
	@RequestMapping("/findFlights")
	public String findFlights(HttpSession session) {
		Boolean isLoggedIn = (Boolean) session.getAttribute("userLoggedIn");
        if (isLoggedIn != null && isLoggedIn) {
        	return "findFlights";
        }
        else{
			return "login/login";
		}
		
	}
	
	@RequestMapping("/loginpage")
	public String loginpage() {
		return "login/login";
	}
}
