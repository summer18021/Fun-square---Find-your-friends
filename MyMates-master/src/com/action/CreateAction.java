package com.action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.service.CreateService;


public class CreateAction {
	public String execute() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		String select = request.getParameter("select");
		String title = request.getParameter("title");
		String time = request.getParameter("time");
		String location = request.getParameter("location");
		int attendance = 1;
		String content = request.getParameter("content");
		String sponsor = (String) request.getSession().getAttribute("username");
		CreateService createService = new CreateService();
		createService.create(select,title,time,location,attendance,content,sponsor);
		return "success";
	}
}
