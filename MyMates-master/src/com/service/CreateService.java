package com.service;

import java.sql.SQLException;

import com.DAO.CreateActivity;

public class CreateService {

	public void create(String select, String title, String time,
			String location, int attendance, String content, String sponsor) throws SQLException {
		// TODO Auto-generated method stub
		CreateActivity createActivity = new CreateActivity();
		createActivity.create(select,title,time,location,attendance,content,sponsor);
	}

}
