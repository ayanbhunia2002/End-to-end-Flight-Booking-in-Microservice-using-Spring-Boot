package com.ayan.flightreservation.controllers;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ayan.flightreservation.entities.User;
import com.ayan.flightreservation.repos.UserRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class UserController {
	
	@Autowired
	UserRepository userRepository;

	@RequestMapping("/showReg")
	public String showRegistrationPage() {
		return "login/registerUser";
	}
	
	@RequestMapping(value = "registerUser", method = RequestMethod.POST)
	public ModelAndView register(@ModelAttribute("user") User user) {
		
		ModelAndView mv = new ModelAndView();
				
		try {
			userRepository.save(user);
			mv.addObject("sucmsg", "login successfully");
			mv.setViewName("login/login");
			
		} 
		catch (Exception e) {
			mv.addObject("errmsg", "something went wrong..try again");
			try {
				Thread.sleep(2000);
			} catch (InterruptedException e1) {
			}
			mv.setViewName("login/registerUser");
		}
		
		return mv;
	}
	
	@RequestMapping(value = "login", method = RequestMethod.POST)
	public ModelAndView login(@RequestParam("email") String email, @RequestParam("password") String password, Principal principal, HttpSession session) {
		
		ModelAndView mv = new ModelAndView();
		
		User user = userRepository.findByEmail(email);
		
		session.setAttribute("userLoggedIn", true);
		
		if(user == null || user.getPassword().equals(password) == false) {
			mv.addObject("msg", "Invalid username or password...please try again!");
			mv.setViewName("login/login");
		}
		
		else{
//			String name1 = principal.getName();
			System.out.println(user.getFirstName());
			mv.setViewName("homePage");
		}
		
		mv.addObject("user", user);
		return mv;
	}
}
