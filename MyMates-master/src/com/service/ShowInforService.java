package com.service;

import java.sql.SQLException;
import java.util.List;

import com.DAO.ShowInfor;
import com.entity.Activity;

public class ShowInforService {

	public Activity show(String title) throws SQLException {
		ShowInfor show = new ShowInfor();
		return show.show(title);
	}

	public List<String> getMessage(String parameter)throws SQLException {
		// TODO Auto-generated method stub
		ShowInfor show = new ShowInfor();
		return show.getMessage(parameter);
	}

}
