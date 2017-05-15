package com.service;

import java.sql.SQLException;

import com.DAO.LoginValidate;


public class LoginService {

	public boolean login(String username, String password) throws SQLException {
		LoginValidate loginValidate = new LoginValidate();
		boolean bool = loginValidate.login(username, password);
		if(bool){
			return true;
		}
		return false;
	}

}
