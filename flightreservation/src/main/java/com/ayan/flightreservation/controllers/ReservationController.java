package com.ayan.flightreservation.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ayan.flightreservation.dto.ReservationRequest;
import com.ayan.flightreservation.entities.Flight;
import com.ayan.flightreservation.entities.Reservation;
import com.ayan.flightreservation.repos.FlightRepository;
import com.ayan.flightreservation.services.ReservationService;

@Controller
public class ReservationController {
	
	@Autowired
	FlightRepository repos;
	
	@Autowired
	ReservationService reservationService;
	
	@RequestMapping("/showCompleteReservation")
	public ModelAndView showCompleteReservation(@RequestParam("flightId") int flightId) {
		
		ModelAndView mv = new ModelAndView();
		Flight flight = repos.findById(flightId).get();
		mv.addObject("flight", flight);
		mv.setViewName("completeReservation");
		
		return mv;
	}
	
	@RequestMapping(value = "completeReservation", method = RequestMethod.POST)
	public String completeReservation(ReservationRequest request, ModelMap modelMap) {
		
		//System.out.println(request.getCardNumber() + " --" + request.getPassengerFirstName());
		
		Reservation reservation = reservationService.bookFlight(request);
		
		//System.out.println("id is " + reservation.getId());
		
		modelMap.addAttribute("msg", "Reervation created successgfully and id is : " + reservation.getId());
		return "reservationConfirmation";
	}
}
