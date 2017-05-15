package com.DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.entity.Activity;

public class Attend {

	public void attend(String username, String title) throws SQLException {
		// TODO Auto-generated method stub
		Connection conn = null;
		conn = MySqlConnection.getConnection();
		Statement statement = conn.createStatement();
		int attendance = 0;
		String str1 = username;
		String str2 = title;
		String sql = "select * from activity where title = '" + str2 + "'";
		ResultSet rs = statement.executeQuery(sql);
		while (rs.next()) {
			attendance = rs.getInt("Attendance");
		}
		String sql2 = "INSERT INTO attendance(username,title) VALUES ('" + str1
				+ "', '" + str2 + "')";
		statement.execute(sql2);
		attendance += 1;
		String sql3 = "update activity set attendance='" + attendance
				+ "' where title = '" + str2 + "'";
		statement.execute(sql3);
	}

}
