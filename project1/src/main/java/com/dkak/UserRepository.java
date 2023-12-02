package com.dkak;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class UserRepository{

	private EntityManagerFactory emf ;
	private EntityManager em;
	
	public UserRepository() {
		emf= Persistence.createEntityManagerFactory("pu");
		em= emf.createEntityManager();
	}
	
	public void insertObjects(User u, Addresses a) {
		// Starting transaction
    	em.getTransaction().begin();
    	
    	// Inserting user
    	em.persist(u);
    	
    	// Commiting transaction
    	em.getTransaction().commit();
    	
    	// Setting address id same as user id
    	a.setUserId(u.getUserId());
    	// Inserting address
    	em.persist(a);
    	// Commiting transaction
    	em.getTransaction().commit();
    	
    	
    	
    	// Closing 
    	emf.close();  
        em.close();  
	}
	
	public ArrayList<User> getAllUsers() {
		ArrayList<User> usersList = (ArrayList<User>)em.createQuery("from User", User.class).getResultList();
		return usersList;
	}
	
	
	public ArrayList<Object> getUserDetails(int userId){
		
		ArrayList<Object> al=new ArrayList<Object>();
		
	    User user = em.find(User.class,userId);
	    Addresses addresses = em.find(Addresses.class, userId);
		
	    al.add(user);
	    al.add(addresses);
	    
		return al;
	}
	
   
}
