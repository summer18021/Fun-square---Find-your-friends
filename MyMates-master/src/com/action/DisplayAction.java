package com.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.service.AttendanceService;
import com.service.DisplayService;

public class DisplayAction {
	public String execute() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		String username = (String) request.getSession().getAttribute("username");
		List<String> list = new ArrayList<String>();
		DisplayService display = new DisplayService();
		list = display.getTitle(request.getParameter("category"));
		request.setAttribute("list", list);
		return "success";
	}
}
