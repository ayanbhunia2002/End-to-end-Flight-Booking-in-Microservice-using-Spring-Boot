package com.ayan.flightckeckin.integration;

import com.ayan.flightckeckin.integration.dto.ReservationUpdateRequest;
import com.ayan.flightreservation.entities.Reservation;

public interface ReservationRestClient {
	
	public Reservation findReservation(int id);
	
	public Reservation updateReservation(ReservationUpdateRequest request);
}
