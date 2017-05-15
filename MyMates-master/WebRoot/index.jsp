<!DOCTYPE html>
<%@ page language="java" pageEncoding="GB2312"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
    
<html>
  <head>
      
    <base href="<%=basePath%>">
    <title>Login Page</title>
      
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="UTF-8" />

    <link rel="icon" type="image/ico" href="assets/images/favicon.ico" />
      
    <!-- Bootstrap -->
    <link href="assets/css/vendor/bootstrap/bootstrap.min.css" rel="stylesheet">
    <link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/vendor/bootstrap-checkbox.css">

    <link href="assets/css/minimal.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
  </head>
  <body class="bg-1">
    <!-- Wrap all page content here -->
    <div id="wrap">
      <!-- Make page fluid -->
      <div class="row">
        <!-- Page content -->
        <div id="content" class="col-md-12 full-page login">


          <div class="inside-block">
            <img src="assets/images/logo-big.png" alt class="logo">
            <h1><strong>Welcome</strong> to MyMates</h1>
            

            <form id="form-signin" class="form-signin" action="Login.action" method="post">
              <section>
                <div class="input-group">
<!--                    <s:textfield key="global.username" name="username" type="text" class="form-control" placeholder="Username"/>-->
                  <input type="text" class="form-control" name="username" placeholder="Username">
                  <div class="input-group-addon"><i class="fa fa-user"></i></div>
                </div>
                <div class="input-group">
<!--                    <s:textfield key="global.password" name="password" type="password" class="form-control" placeholder="Password"/>-->
                  <input type="password" class="form-control" name="password" placeholder="Password">
                  <div class="input-group-addon"><i class="fa fa-key"></i></div>
                </div>
              </section>
             
              <section class="log-in">
<!--                  <s:submit key="global.login" name="login" class="btn btn-greensea"/>	-->
                <button class="btn btn-greensea">Sign in</button>
                
               <!--  <button class="btn btn-slategray"><a href="register.jsp"></a>create an account</button> -->
                
				<br><td colspan="2"><a href="register.jsp">register</a></td>
              </section>
            </form>
          </div>
        </div>
        <!-- /Page content -->  
      </div>
    </div>
    <!-- Wrap all page content end -->      
  </body>
</html>
      