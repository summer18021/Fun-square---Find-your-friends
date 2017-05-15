package com.service;

import java.sql.SQLException;

import com.DAO.RegisterValidate;


public class RegisterService {

	public boolean register(String username, String password) throws SQLException {
		RegisterValidate registerValidate = new RegisterValidate();
		boolean bool = registerValidate.register(username, password);
		if(bool){
			return true;
		}
		return false;
	}

}
