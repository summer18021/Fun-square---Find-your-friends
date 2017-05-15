package com.DAO;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

public class CreateActivity {

	public void create(String select, String title, String time,
			String location, int attendance, String content, String sponsor)
			throws SQLException {
		// TODO Auto-generated method stub
		Connection conn = null;
		conn = MySqlConnection.getConnection();
		Statement statement = conn.createStatement();
		String str1 = select;
		String str2 = title;
		String str3 = time;
		String str4 = location;
		int att = attendance;
		String str5 = content;
		String str6 = sponsor;

		String sql = "INSERT INTO activity(title,time,location,Attendance,content,sponsor,category) VALUES ('"
				+ str2
				+ "', '"
				+ str3
				+ "', '"
				+ str4
				+ "', '"
				+ att
				+ "', '"
				+ str5 + "', '" + str6 + "', '" + str1 + "')";
		String sql2 = "INSERT INTO sponsor(username,title) VALUES ('" + str6
				+ "', '" + str2 + "')";
		System.out.println(sql);
		statement.execute(sql);
		System.out.println(sql2);
		statement.execute(sql2);
		conn.close();
		statement.close();
	}

}
