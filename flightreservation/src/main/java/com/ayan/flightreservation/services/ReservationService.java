package com.ayan.flightreservation.services;

import com.ayan.flightreservation.dto.ReservationRequest;
import com.ayan.flightreservation.entities.Reservation;

public interface ReservationService {
	
	public Reservation bookFlight(ReservationRequest request);
}
