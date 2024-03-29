package com.ayan.flightckeckin.integration.dto;

import java.sql.Timestamp;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;

public class Flight {
	
	private int id;

	private String flightNumber;
	private String operatingAirlines;
	private String departureCity;
	private String arrivalCity;
	
	@DateTimeFormat(pattern = "dd//MM/yyyy")
	@Temporal(TemporalType.DATE)
	private Date dateOfDeparture;
	
	private Timestamp estimatedDepartureTime;

	public String getFlightNumber() {
		return flightNumber;
	}

	public void setFlightNumber(String flightNumber) {
		this.flightNumber = flightNumber;
	}

	public String getOperatingAirlines() {
		return operatingAirlines;
	}

	public void setOperatingAirlines(String operatingAirlines) {
		this.operatingAirlines = operatingAirlines;
	}

	public String getDepartureCity() {
		return departureCity;
	}

	public void setDepartureCity(String departureCity) {
		this.departureCity = departureCity;
	}

	public String getArrivalCity() {
		return arrivalCity;
	}

	public void setArrivalCity(String arrivalCity) {
		this.arrivalCity = arrivalCity;
	}

	public Date getDateOfDeparture() {
		return dateOfDeparture;
	}

	public void setDateOfDeparture(Date dateOfDeparture) {
		this.dateOfDeparture = dateOfDeparture;
	}

	public Timestamp getEstimatedDepartureTime() {
		return estimatedDepartureTime;
	}

	public void setEstimatedDepartureTime(Timestamp estimatedDepartureTime) {
		this.estimatedDepartureTime = estimatedDepartureTime;
	}

	@Override
	public String toString() {
		return "Flight [flightNumber=" + flightNumber + ", operatingAirlines=" + operatingAirlines
				+ ", departureCity=" + departureCity + ", arrivalCity=" + arrivalCity + ", dateOfDeparture="
				+ dateOfDeparture + ", estimatedDepartureTime=" + estimatedDepartureTime + "]";
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
}
