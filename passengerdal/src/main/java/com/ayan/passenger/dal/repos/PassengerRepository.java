package com.ayan.passenger.dal.repos;

import org.springframework.data.repository.CrudRepository;

import com.ayan.passenger.dal.entities.Passenger;

public interface PassengerRepository extends CrudRepository<Passenger, Integer> {

}
