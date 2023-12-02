package com.dkak;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Addresses {

	@Id
	private int userId;
	private String work;
	private String home;
	
	// Default constructor needed when fetching data
	public Addresses(){}
	
	public Addresses(String aWork,String aHome) {
		this.work=aWork;
		this.home=aHome;
	}
	
	public void setUserId(int id) {
		this.userId=id;
	}
	
	public String getWorkAddress() {
		return this.work;
	}
	
	public String getHomeAddress() {
		return this.home;
	}
}
