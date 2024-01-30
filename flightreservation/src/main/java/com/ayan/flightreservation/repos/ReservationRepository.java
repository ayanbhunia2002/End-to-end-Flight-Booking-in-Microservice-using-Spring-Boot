package com.ayan.flightreservation.repos;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ayan.flightreservation.entities.Reservation;

public interface ReservationRepository extends JpaRepository<Reservation, Integer> {

}
