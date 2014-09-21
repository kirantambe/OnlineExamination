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
		if (session.getAttribute("uname") == null)
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
					<li><a href="#">Logout</a></li>
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
			<h2 class="col-md-6 col-md-offset-3 text-muted">Paste Instructions and Questions</h2>
		</div>
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<form action="ScheduleExamServlet" method="post" enctype="multipart/form-data">
					<div class="form-group">
						<label for="instruction"  class="text-muted">Instructions:</label> 
						 <textarea name="instructions" rows="10" cols="10" id="instruction" class="form-control"></textarea> 
					</div>
					<div class="form-group">
					<label for="file" class="text-muted">Upload Slips:</label>
					<input type="file" id="file" class="form-control" name="fileupload" multiple/>					
					</div>
					<div class="form-group">
					<input type="submit" value="Submit"/>					
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