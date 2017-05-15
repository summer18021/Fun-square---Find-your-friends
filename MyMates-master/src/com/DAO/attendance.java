package com.DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class attendance {

	public List<String> getTitle(String username) throws SQLException {
		// TODO Auto-generated method stub
		Connection conn = null;
		conn = MySqlConnection.getConnection();
		Statement statement = conn.createStatement();
		String str1 = username;
		List<String> list = new ArrayList<String>();
		String sql = "select * from attendance where username = '" + str1 + "'";
		ResultSet rs = statement.executeQuery(sql);
		while (rs.next()) {
			list.add(rs.getString("title"));
		}
		conn.close();
		statement.close();
		rs.close();
		return list;
	}

}
