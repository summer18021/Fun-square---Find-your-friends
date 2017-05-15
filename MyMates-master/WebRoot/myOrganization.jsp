<%@ page language="java" import="java.util.*" pageEncoding="US-ASCII"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'myOrganization.jsp' starting page</title>
    
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
	<form name="form1" method="post" align = "center">
		<input type="hidden" id="title" name="title">

		<script type="text/javascript">
			function checkvalue(a) {
				title = a.innerHTML;
				document.getElementById("title").value = title;
				form1.action = "Infor.action?select=my";
				form1.submit();
			}
		</script>
		<%
			List list = (List) request.getAttribute("list");
			for (int i = 0; i < list.size(); i++) {
				String str = (String) list.get(i);
				/* onclick='checkvalue(this);' */
				out.print("<U>");
				out.print("<a  onclick='checkvalue(this);'>" + str + "</a>");
				out.print("</U>");
				out.println("<br>");
			}
		%>
	</form>
</body>
</html>
