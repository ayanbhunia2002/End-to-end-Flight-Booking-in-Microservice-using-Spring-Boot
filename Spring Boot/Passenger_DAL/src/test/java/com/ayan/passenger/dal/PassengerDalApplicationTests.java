package com.ayan.passenger.dal;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.ayan.passenger.dal.entities.Passenger;
import com.ayan.passenger.dal.repository.PassengerRepository;

@SpringBootTest
class PassengerDalApplicationTests {
	
	@Autowired
	private PassengerRepository repos;

	@Test
	void testcreatePassenger() {
		Passenger pass = new Passenger();
		pass.setName("ARPAN");
		pass.setCourse("Aptitude");
		pass.setFee(10d);
		repos.save(pass);
	}
	
	

}
