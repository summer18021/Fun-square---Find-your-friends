package com.action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.service.MessageService;

public class MessageAction {
	public String execute() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		String username = (String) request.getSession()
				.getAttribute("username");
		String message = request.getParameter("input");
		String title = (String) request.getSession().getAttribute("title");
		System.out.println("title = " + title);
		MessageService msg = new MessageService();
		String str = username + ":" + message;
		msg.saveMessage(title, str);
		return "success";
	}
}
