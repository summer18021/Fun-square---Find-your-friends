package com.action;


import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.service.AttendService;


public class AttendAction {
	public String execute() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		String username = (String) request.getSession()
				.getAttribute("username");
		String title = (String) request.getSession().getAttribute("title");
		AttendService att = new AttendService();
		att.attend(username,title);
		return "success";
	}
}
