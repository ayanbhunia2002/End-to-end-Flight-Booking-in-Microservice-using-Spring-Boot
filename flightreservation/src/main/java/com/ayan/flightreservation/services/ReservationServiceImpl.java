package com.ayan.flightreservation.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ayan.flightreservation.dto.ReservationRequest;
import com.ayan.flightreservation.entities.Flight;
import com.ayan.flightreservation.entities.Passenger;
import com.ayan.flightreservation.entities.Reservation;
import com.ayan.flightreservation.repos.FlightRepository;
import com.ayan.flightreservation.repos.PassengerRepository;
import com.ayan.flightreservation.repos.ReservationRepository;

@Service
public class ReservationServiceImpl implements ReservationService {
	
	@Autowired
	FlightRepository flightRepository;
	
	@Autowired
	PassengerRepository passengerRepository;
	
	@Autowired
	ReservationRepository reservationRepository;

	@Override
	public Reservation bookFlight(ReservationRequest request) {
		
		// make payment
		
		int flightId = request.getFlightId();
		Flight flight = flightRepository.findById(flightId).get();
		
		Passenger passenger = new Passenger();
		passenger.setFirstName(request.getPassengerFirstName());
		passenger.setLastName(request.getPassengerLastName());
		passenger.setEmail(request.getPassengerEmail());
		passenger.setPhone(request.getPassengerPhone());
		passenger.setGender(request.getPassengerGender());
		passenger.setAge(request.getPassengerAge());
		Passenger savedPassenger = passengerRepository.save(passenger);
		
		Reservation reservation = new Reservation();
		reservation.setFlight(flight);
		reservation.setPassenger(savedPassenger);
		reservation.setCheckedIn(false);
		//reservation.setNumberOfBags();
		
		
		Reservation savedReservation = reservationRepository.save(reservation);
		
		return savedReservation;
	}

}
