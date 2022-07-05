package com.ayan.passenger.dal.repository;

import org.springframework.data.repository.CrudRepository;

import com.ayan.passenger.dal.entities.Passenger;

public interface PassengerRepository extends CrudRepository<Passenger, Long> {

}
