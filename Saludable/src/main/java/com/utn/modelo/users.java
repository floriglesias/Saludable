package com.utn.modelo;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "users", catalog = "Saludable")
public class users {
	
	String username;
	
	String password;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public users(String username, String password) {
		super();
		this.username = username;
		this.password = password;
	}
	
	public users() {
	}
	
	
}
