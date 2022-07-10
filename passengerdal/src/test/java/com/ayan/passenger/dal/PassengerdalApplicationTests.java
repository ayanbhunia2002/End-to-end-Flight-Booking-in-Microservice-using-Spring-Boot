package com.ayan.passenger.dal;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.ayan.passenger.dal.entities.Passenger;
import com.ayan.passenger.dal.repos.PassengerRepository;

@SpringBootTest
class PassengerdalApplicationTests {
	
	@Autowired
	private PassengerRepository repos;
	
	@Test
	void testPassengeradd() {
		Passenger pass = new Passenger();
		pass.setPname("Arpan");
		pass.setPcourse("Aptitude");
		pass.setPfee(10);
		repos.save(pass); 
	}
	
	
	@Test
	void testFindPassengerbyId() {
		Passenger pass = repos.findById(1).get();
		System.out.println(pass);
	}
	
	@Test
	void testUpdatePassenger() {
		Passenger pass = repos.findById(1).get();
		pass.setPfee(45);
		repos.save(pass);
	}
	
	@Test
	void testDeletePassenger() {
		Passenger pass = repos.findById(1).get();
		repos.delete(pass);
	}
	

}
