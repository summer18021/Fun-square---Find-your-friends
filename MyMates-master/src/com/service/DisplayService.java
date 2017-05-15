package com.service;

import java.sql.SQLException;
import java.util.List;

import com.DAO.Display;
import com.DAO.Organization;

public class DisplayService {

	public List<String> getTitle(String string) throws SQLException {
		// TODO Auto-generated method stub
		Display display = new Display();
		return display.getTitle(string);
	}

}
