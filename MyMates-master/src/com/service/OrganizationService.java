package com.service;

import java.sql.SQLException;
import java.util.List;

import com.DAO.Organization;
import com.DAO.attendance;

public class OrganizationService {

	public static List<String> getTitle(String username) throws SQLException {
		// TODO Auto-generated method stub
		Organization org = new Organization();
		return org.getTitle(username);
	}

}
