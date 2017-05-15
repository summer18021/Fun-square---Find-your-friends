package com.action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.service.LoginService;

public class LoginAction {
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
		LoginService login = new LoginService();
		boolean bool = login.login(username, password);
		// Connection conn = new Connection();
		// boolean bool = conn.login(username, password);
		if (bool == true) {
			ActionContext context = ActionContext.getContext();
			context.getSession().put("username", username);
			return "success";
		}
		return "error";
	}
}
