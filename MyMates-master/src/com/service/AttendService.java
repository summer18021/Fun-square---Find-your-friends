package com.service;

import java.sql.SQLException;

import com.DAO.Attend;
import com.DAO.ShowInfor;
import com.DAO.attendance;
import com.entity.Activity;

public class AttendService {


	public void attend(String username, String title) throws SQLException {
		// TODO Auto-generated method stub
		Attend att = new Attend();
		att.attend(username,title);
	}

}
