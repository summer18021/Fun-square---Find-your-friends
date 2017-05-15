package com.DAO;

import java.sql.SQLException;

import com.service.AttendanceService;

public class main {

	public static void main(String[] args) throws SQLException {
		// TODO Auto-generated method stub
		// if(login.login("aaa", "aaa")){
		// System.out.println("true");
		// }else{
		// System.out.println("false");
		// }
		// CreateActivity create = new CreateActivity();
		// create.create("ballGames", "asdfasd", "123123", "adsfasd", 1,
		// "sdfsdf", "1");
//		attendance aa = new attendance();
//		AttendanceService a = new AttendanceService();
//		System.out.println(a.getTitle("1").get(0));
//		System.out.println(a.getTitle("1").get(1));
//		Display dis = new Display();
//		System.out.println(dis.getTitle("ballGames"));
		Attend att = new Attend();
		att.attend("1", "1");
	}

}
