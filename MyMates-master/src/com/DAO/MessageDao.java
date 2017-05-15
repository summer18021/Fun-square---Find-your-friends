package com.DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MessageDao {

	public void saveMessage(String str, String str2) throws SQLException {
		// TODO Auto-generated method stub
		Connection conn = null;
		conn = MySqlConnection.getConnection();
		Statement statement = conn.createStatement();
		
		String sql2 = "INSERT INTO message(title,message) VALUES ('" + str + "', '" + str2
				+ "')";
		System.out.println(sql2);
		statement.execute(sql2);
		conn.close();
		statement.close();
	}

}
