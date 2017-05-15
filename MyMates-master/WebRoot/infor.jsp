<%@ page language="java" import="java.util.*" pageEncoding="US-ASCII"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'attend.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>
	<table width="100%" height="700" border="1" cellpadding="0"
		cellspacing="0">
		<tr>
			<td width="40%" height="100%" valign="top">
				<form method="post" action="Attend.action">
					<table align="center">
						<tr>
							<td>Title: <%=request.getAttribute("title")%></td>
							<%
								request.getSession().setAttribute("title",
										request.getAttribute("title"));
							%>
						</tr>
						<tr>
							<td>Category: <%=request.getAttribute("category")%></td>
						</tr>
						<tr>
							<td>Time: <%=request.getAttribute("time")%></td>
						</tr>
						<tr>
							<td>Location: <%=request.getAttribute("location")%></td>
						</tr>
						<tr>
							<td>Attendance: <%=request.getAttribute("attendance")%></td>
						</tr>
						<tr>
							<td>Sponsor: <%=request.getAttribute("sponsor")%></td>
						</tr>
						<tr>
							<td>Content: <%=request.getAttribute("content")%></td>
						</tr>
					</table>
				</form>
			</td>

			<td width="80%" valign="top"><form action="Message.action"
					method="post">
					
					
					<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Message Board</h3>
					
					<input type="text" name="input" style="width:300px"><input type="submit"
						value="Send"> <br>
					<%
						List list = (List) request.getAttribute("message");
						for (int i = 0; i < list.size(); i++) {
							String str = (String) list.get(i);
							/* onclick='checkvalue(this);' */
							out.print(str);
							out.println("<br>");
						}
					%>
				</form></td>
		</tr>

	</table>
</body>
</html>
