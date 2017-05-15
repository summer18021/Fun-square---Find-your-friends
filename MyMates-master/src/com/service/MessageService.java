package com.service;

import java.sql.SQLException;
import java.util.List;

import com.DAO.MessageDao;
import com.DAO.ShowInfor;
import com.entity.Activity;

public class MessageService {

	public void saveMessage(String str, String str2) throws SQLException {
		// TODO Auto-generated method stub
		MessageDao msg = new MessageDao();
		msg.saveMessage(str,str2);
	}


}
