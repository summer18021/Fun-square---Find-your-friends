package com.DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.entity.Activity;

public class ShowInfor {

	public Activity show(String title) throws SQLException {
		// TODO Auto-generated method stub
		Activity activity = new Activity();
		Connection conn = null;
		conn = MySqlConnection.getConnection();
		Statement statement = conn.createStatement();
		String str1 = title;
		String sql = "select * from activity where title = '" + str1 + "'";
		ResultSet rs = statement.executeQuery(sql);
		while (rs.next()) {
			activity.setTime(rs.getString("time"));
			activity.setAttendance(rs.getInt("Attendance"));
			activity.setCategory(rs.getString("category"));
			activity.setContent(rs.getString("content"));
			activity.setLocation(rs.getString("location"));
			activity.setSponsor(rs.getString("sponsor"));
			activity.setTitle(title);
		}
		return activity;
	}

	public List<String> getMessage(String title) throws SQLException {
		// TODO Auto-generated method stub
		Connection conn = null;
		conn = MySqlConnection.getConnection();
		Statement statement = conn.createStatement();
		String str1 = title;
		String sql = "select * from message where title = '" + str1 + "'";
		ResultSet rs = statement.executeQuery(sql);
		List<String> list = new ArrayList<String>();
		while (rs.next()) {
			list.add(rs.getString("message"));
		}
		return list;
	}
}
