package com.dkak;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class User {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String firstname;
	private String lastname;
	private String gender;
	private Date birthdate;
	
	// Default constructor needed when fetching data
	public User(){}

	public User(String aFirstname,String aLastname,String aGender, Date aBirthdate) {
		this.firstname=aFirstname;
		this.lastname=aLastname;
		this.gender = aGender;
		this.birthdate=aBirthdate;
	}
	
	public int getUserId() {
		return this.id;
	}
	
	public String getFirstname() {
		return this.firstname;
	}
	
	public String getLastname() {
		return this.lastname;
	}
	
	public String getGender() {
		return gender;
	}
	
	public String getBirthdate() {
		if(this.birthdate==null) {
			return null;
		}
		return new SimpleDateFormat("dd/MM/yyyy").format(this.birthdate);
		
	}

	@Override
	public String toString() {
		return "User: " + firstname + " " + lastname + " " + gender + " " + getBirthdate();
	}
	
	
}
