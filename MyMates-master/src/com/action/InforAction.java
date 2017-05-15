package com.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.entity.Activity;
import com.service.ShowInforService;

public class InforAction {

	public String execute() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		ShowInforService show = new ShowInforService();
		Activity activity = null;
		activity = show.show(request.getParameter("title"));
		request.setAttribute("title", activity.getTitle());
		request.setAttribute("time", activity.getTime());
		request.setAttribute("location", activity.getLocation());
		request.setAttribute("attendance", activity.getAttendance());
		request.setAttribute("content", activity.getContent());
		request.setAttribute("sponsor", activity.getSponsor());
		request.setAttribute("category", activity.getCategory());
		
		List<String> message = new ArrayList<String>();
		message = show.getMessage(request.getParameter("title"));
		request.setAttribute("message", message);
		
		if (request.getParameter("select").equals("my")) {
			return "infor";
		} else {
			return "attend";
		}
	}
}
