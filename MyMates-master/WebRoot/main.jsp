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

<title>My JSP 'index.jsp' starting page</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->


      
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    

    <link rel="icon" type="image/ico" href="assets/images/favicon.ico" />
    <link href="assets/css/vendor/bootstrap/bootstrap.min.css" rel="stylesheet">
    <link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/vendor/animate/animate.min.css">
    <link type="text/css" rel="stylesheet" media="all" href="assets/js/vendor/mmenu/css/jquery.mmenu.all.css" />
    <link rel="stylesheet" href="assets/js/vendor/videobackground/css/jquery.videobackground.css">
    <link rel="stylesheet" href="assets/css/vendor/bootstrap-checkbox.css">

    <link rel="stylesheet" href="assets/js/vendor/rickshaw/css/rickshaw.min.css">
    <link rel="stylesheet" href="assets/js/vendor/morris/css/morris.css">
    <link rel="stylesheet" href="assets/js/vendor/tabdrop/css/tabdrop.css">
    <link rel="stylesheet" href="assets/js/vendor/summernote/css/summernote.css">
    <link rel="stylesheet" href="assets/js/vendor/summernote/css/summernote-bs3.css">
    <link rel="stylesheet" href="assets/js/vendor/chosen/css/chosen.min.css">
    <link rel="stylesheet" href="assets/js/vendor/chosen/css/chosen-bootstrap.css">

    <link href="assets/css/minimal.css" rel="stylesheet">
</head>

<body class="bg-1">
	Dear,
	<%=session.getAttribute("username")%>.
	<!-- show the system time  -->
	<%
		for (int a = 0; a < 180; a++)
			out.print("&nbsp");
		String jspPath = application.getRealPath(request.getServletPath());
		java.io.File jspFile = new java.io.File(jspPath);
		out.println(new java.util.Date(jspFile.lastModified()));
	%>


	<table width="100%" height="700" border="1" cellpadding="0"
		cellspacing="0">
		<tr>
			<td width="15%" height="100%" valign="top">
			
			<ul class="menu">
			<a href="Display.action?category=ballGames" target="mainFrame" class="fa fa-caret-right">Ball Games</a><br>
			<a href="Display.action?category=bodyBuilding" target="mainFrame" class="fa fa-caret-right">Body Building</a><br>
				<a href="Display.action?category=outdoorAdventure" target="mainFrame" class="fa fa-caret-right">Outdoor
					Adventure</a><br> <a href="Display.action?category=shopping" target="mainFrame" class="fa fa-caret-right">Shopping</a><br>
				<a href="Display.action?category=chessAndCards" target="mainFrame" class="fa fa-caret-right">Chess and Cards</a><br>
				<a href="Display.action?category=mealPal" target="mainFrame" class="fa fa-caret-right">Meal Pal</a><br> <a
				href="Display.action?category=carPooling" target="mainFrame" class="fa fa-caret-right">Carpooling</a><br> <a
				href="Display.action?category=movie" target="mainFrame" class="fa fa-caret-right">Movie</a><br> <a
				href="Display.action?category=others" target="mainFrame" class="fa fa-caret-right">Others</a><br> <br> <br>
				
				
				<a href="createActivity.jsp" target="mainFrame" class="fa fa-caret-right">Create Activity</a><br>
				<a href="MyAttendance.action" target="mainFrame" class="fa fa-caret-right">My Attendance</a><br>
				<a href="MyOrganization.action" target="mainFrame" class="fa fa-caret-right">My
					Organization</a><br><br>
					
				<a href="index.jsp" class="fa fa-caret-right">Log Out</a></td>
			
			<td width="80%" valign="top"><iframe src="welcome.jsp"
					name="mainFrame" frameborder="0" marginheight="0" marginwidth="0"
					height="700" width="100%"></iframe></td>
		</tr>
		
	</table>
</body>
</html>
