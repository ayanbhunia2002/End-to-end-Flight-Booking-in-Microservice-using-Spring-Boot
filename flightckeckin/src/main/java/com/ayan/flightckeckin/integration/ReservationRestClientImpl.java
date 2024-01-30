package com.ayan.flightckeckin.integration;

import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;

import com.ayan.flightckeckin.integration.dto.ReservationUpdateRequest;
import com.ayan.flightreservation.entities.Reservation;

@Component
public class ReservationRestClientImpl implements ReservationRestClient {

	private static final String RESERVATION_REST_URL = "http://localhost:9989/flightreservation/reservations/";

	@Override
	public Reservation findReservation(int id) {

		RestTemplate restTemplate = new RestTemplate();
		Reservation reservation = restTemplate
				.getForObject(RESERVATION_REST_URL + id, Reservation.class);

		return reservation;
	}

	@Override
	public Reservation updateReservation(ReservationUpdateRequest request) {
		
		RestTemplate restTemplate = new RestTemplate();
		Reservation reservation = restTemplate.postForObject(RESERVATION_REST_URL, request, Reservation.class);
		
		return reservation;
	}

}
