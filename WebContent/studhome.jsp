<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<script src="jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.js"></script>
<link rel="stylesheet" type="text/css"
	href="bootstrap/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="common-style.css">
<style type="text/css">
	
</style>
</head>
<body>
	<!--Header-->
	<%
		if(session.getAttribute("uname")==null)
			response.sendRedirect("index.html#loginwarning");
	%>
	<nav class="navbar navbar-default navbar-inverse" role="navigation">
		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Online Practical Examination</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#">Welcome Guest</a></li>
					<li><a href="#">Login</a></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>

	<!--MainContent-->
	<div class="container" id="main-content">
		<!--Login Form-->
		<br> <br> <br>
		<div class="row">
			<h2 class="col-md-6 col-md-offset-3">Login</h2>
		</div>
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<form action="LoginServlet" method="post">
					<div class="form-group">
						<label for="uname">Username </label> <input type="text" id="uname"
							name="uname" class="form-control" placeholder="MCA--- / FAC---" />
					</div>
					<div class="form-group">
						<label for="pass">Password </label> <input type="password"
							name="pass" id="pass" class="form-control" placeholder="password" />
					</div>
					<span class="text-danger" id="loginwarning">Invalid username or password</span>
					<div class="form-group text-center">
						<input type="submit" value="Submit" class="btn btn-primary " /> <input
							type="reset" value="Reset" class="btn btn-default " />
					</div>
					
				</form>
			</div>
		</div>
	</div>
	<!--Footer-->
	<footer class="navbar-fixed-bottom">
		<div class="row">
			<div class="col-md-12 text-center">
				<a href="#">Contact Us</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a
					href="#">Disclaimer</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a
					href="#">Feedback</a>
			</div>
		</div>
	</footer>
</body>
</html>