package com.ayan.passenger.dal.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "passenger1")
public class Passenger {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String pname;
	private String pcourse;
	private int pfee;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getPcourse() {
		return pcourse;
	}

	public void setPcourse(String pcourse) {
		this.pcourse = pcourse;
	}

	public int getPfee() {
		return pfee;
	}

	public void setPfee(int pfee) {
		this.pfee = pfee;
	}

	@Override
	public String toString() {
		return "Passenger [id=" + id + ", pname=" + pname + ", pcourse=" + pcourse + ", pfee=" + pfee + "]";
	}
	
}
