package com.DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class RegisterValidate {
	public boolean register(String username, String password)
			throws SQLException {
		// TODO Auto-generated method stub
		Connection conn = null;
		conn = MySqlConnection.getConnection();
		Statement statement = conn.createStatement();
		String str1 = username;
		String str2 = password;

		String sql = "select * from user where username = '" + str1 + "'";
		System.out.println(sql);
		ResultSet rs = statement.executeQuery(sql);
		while (rs.next()) {
			System.out.println(rs.getString("password"));
			if (!rs.getString("password").equals(null)) {
				return false;
			}
		}
		String sql2 = "INSERT INTO user VALUES ('" + str1 + "', '" + str2
				+ "')";
		System.out.println(sql2);
		statement.execute(sql2);
		conn.close();
		statement.close();
		rs.close();
		return true;

	}
}
