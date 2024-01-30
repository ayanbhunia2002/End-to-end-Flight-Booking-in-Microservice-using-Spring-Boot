package com.ayan.flightreservation.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ayan.flightreservation.dto.ReservationUpdateRequest;
import com.ayan.flightreservation.entities.Reservation;
import com.ayan.flightreservation.repos.ReservationRepository;

@Controller
@CrossOrigin
public class ReservationRestController {
	
	@Autowired
	ReservationRepository reservationRepository;
	
	@RequestMapping("/reservations/{id}")
	// This is for sending JSON format
	@ResponseBody
	public Reservation findReservation(@PathVariable("id") int id) {
		
		return reservationRepository.findById(id).get();
	}
	
	@RequestMapping("/reservations/")
	@ResponseBody
	public Reservation updateReservation(@RequestBody ReservationUpdateRequest request) {
		Reservation reservation = reservationRepository.findById(request.getId()).get();
		reservation.setNumberOfBags(request.getNumberOfBags());
		reservation.setCheckedIn(request.getCheckedIn());
		
		return reservationRepository.save(reservation);
	}
}
