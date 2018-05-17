package com.friendsbook.model;

import java.math.BigDecimal;

public class User {
	private String firstname;
	private String surname;
	private BigDecimal phone;
	private String password;
	private String dob;
	private String gender;
	
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getSurname() {
		return surname;
	}
	public void setSurname(String surname) {
		this.surname = surname;
	}
	public BigDecimal getPhone() {
		return phone;
	}
	public void setPhone(BigDecimal phone) {
		this.phone = phone;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	
	

	

}
