package com.dkak;

import java.util.ArrayList;

public class UserService {

	public void insertObjects(User u, Addresses a) {
		UserRepository ur = new UserRepository();
    	ur.insertObjects(u, a);
	}

	public ArrayList<User> getAllUsers() {
		UserRepository ur=new UserRepository();
		ArrayList<User> usersList =ur.getAllUsers();
		return usersList;
	}

	public ArrayList<Object> getUserDetails(int userId) {
		UserRepository ur = new UserRepository();
		ArrayList<Object> al=ur.getUserDetails(userId);
		return al;
	}

}
