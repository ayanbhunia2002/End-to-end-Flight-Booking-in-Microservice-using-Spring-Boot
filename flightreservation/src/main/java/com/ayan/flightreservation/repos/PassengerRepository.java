package com.ayan.flightreservation.repos;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ayan.flightreservation.entities.Passenger;

public interface PassengerRepository extends JpaRepository<Passenger, Integer> {

}
