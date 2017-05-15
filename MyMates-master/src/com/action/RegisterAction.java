package com.action;

import com.service.RegisterService;


public class RegisterAction {
	private String username;
	private String password;
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String execute() throws Exception {
		String username = null;
		username = getUsername();
		String password = null;
		password = getPassword();
		RegisterService register = new RegisterService();
		boolean bool = 	register.register(username,password);
//		Connection conn = new Connection();
//		boolean bool = conn.login(username, password);
		if (bool == true) {
			return "success";
		}
		return "repeat";
	}
}
