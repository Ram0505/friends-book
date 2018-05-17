package com.friendsbook.model;

import java.math.BigDecimal;

public class Login {
	private BigDecimal phone;
	private String password;

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
}
