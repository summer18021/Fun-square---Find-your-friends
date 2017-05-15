package com.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.service.OrganizationService;


public class MyOrganizationAction {
	public String execute() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		String username = (String) request.getSession().getAttribute("username");
		List<String> list = new ArrayList<String>();
		OrganizationService organization = new OrganizationService();
		list = organization.getTitle(username);
		request.setAttribute("list", list);
		return "success";
	}
}
