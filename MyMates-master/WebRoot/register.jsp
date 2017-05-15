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
    <title>Register Page</title>
      
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
            <h1><strong>Welcome</strong> Stranger</h1>
            <h5>MyMates</h5>

            <form name="register" id="form-signin" class="form-signin" action="Register.action" method="post" onclick="return check()">
              <section>
                <div class="input-group">
                  <input type="text" class="form-control" name="username" placeholder="Username">
                  <div class="input-group-addon"><i class="fa fa-user"></i></div>
                </div>
                <div class="input-group">
                  <input type="password" class="form-control" name="password" placeholder="Password">
                  <div class="input-group-addon"><i class="fa fa-key"></i></div>
                </div>
                <div class="input-group">
                  <input type="password" class="form-control" name="password2" placeholder="Confirm Password">
                  <div class="input-group-addon"><i class="fa fa-key"></i></div>
                </div>
              </section>
              <section class="log-in">
                <button class="btn btn-greensea" type="submit">Register</button>
                <span>or</span>
                <button class="btn btn-slategray">Reset</button>
              </section>
            </form>
          </div>
        </div>
        <!-- /Page content -->  
      </div>
    </div>
    <!-- Wrap all page content end -->      
      	<script type="text/javascript">
		function check() {
			var name = document.register.username;
			var pwd1 = document.register.password;
			var pwd2 = document.register.password2;

			if (name.value == null || name.value == "") {
				alert("username cannot be empty");
				name.focus();
				return false;
			}
			if (pwd1.value == null || pwd1.value == "") {
				alert("password cannot be empty");
				pwd1.focus();
				return false;
			}
			if (pwd1.value != pwd2.value) {
				alert("two password not same");
				pwd2.focus();
				return false;
			}
			return true;
		}
	</script>
  </body>
</html>
      