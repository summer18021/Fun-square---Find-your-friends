package com.DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class LoginValidate {
	public boolean login(String username, String password) throws SQLException {
		// TODO Auto-generated method stub
		Connection conn = null;
		conn = MySqlConnection.getConnection();
		Statement statement = conn.createStatement();
		String str1 = username;
		String str2 = password;
		String sql = "select * from user where username = '" + str1 + "'";
		ResultSet rs = statement.executeQuery(sql);
		while (rs.next()) {
			if (rs.getString("password").equals(str2)) {
				conn.close();
				statement.close();
				rs.close();
				return true;
			}
		}
		return false;
	}
}
