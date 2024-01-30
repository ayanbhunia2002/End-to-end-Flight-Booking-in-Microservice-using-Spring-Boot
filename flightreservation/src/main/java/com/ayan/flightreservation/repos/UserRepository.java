package com.ayan.flightreservation.repos;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ayan.flightreservation.entities.User;
import java.util.List;


public interface UserRepository extends JpaRepository<User, Integer> {
	
	User findByEmail(String email);
}
