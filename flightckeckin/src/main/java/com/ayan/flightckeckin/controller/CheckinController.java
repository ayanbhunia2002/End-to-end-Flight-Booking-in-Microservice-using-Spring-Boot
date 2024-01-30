package com.ayan.flightckeckin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ayan.flightckeckin.integration.ReservationRestClient;
import com.ayan.flightckeckin.integration.dto.ReservationUpdateRequest;
import com.ayan.flightreservation.entities.Reservation;

@Controller
public class CheckinController {
	
	@Autowired
	ReservationRestClient restClient;
	
	@RequestMapping("/showStartCheckin")
	public String showStartCheckin() {
		return "startCheckIn";
	}
	
	@RequestMapping("/startCheckIn")
	public ModelAndView startCheckin(@RequestParam("reservationId") int reservationId) {
		Reservation reservation = restClient.findReservation(reservationId);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("displayReservationDetails");
		mv.addObject("reservation", reservation);
		return mv;
	}
	
	@RequestMapping("/completeCheckIn")
	public String completeCheckIn(@RequestParam("reservationId") int reservationId, @RequestParam("numberOfBags") int numberOfBags) {
		ReservationUpdateRequest reservationUpdateRequest = new ReservationUpdateRequest();
		reservationUpdateRequest.setId(reservationId);
		reservationUpdateRequest.setCheckedIn(true);
		reservationUpdateRequest.setNumberOfBags(numberOfBags);
		restClient.updateReservation(reservationUpdateRequest);
		return "ckeckInConfirmation";
	}
}
