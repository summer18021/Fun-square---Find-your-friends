package com.service;

import java.sql.SQLException;
import java.util.List;

import com.DAO.attendance;

public class AttendanceService {

	public static List<String> getTitle(String username) throws SQLException {
		// TODO Auto-generated method stub
		attendance att = new attendance();
		return att.getTitle(username);
	}

}
