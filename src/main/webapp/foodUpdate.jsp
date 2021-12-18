<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
	<link rel="stylesheet" type="text/css" href="./styles.css">
	<!-- CSS Boostrap -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
	<!-- Jquary javascripts -->
	<!-- JQuary csn-->
	<!-- JavaScript Bundle with Popper -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" integrity="sha384-W8fXfP3gkOKtndU4JGtKDvXbO53Wy8SZCQHczT5FMiiqmQfUpWbYdTil/SxwZgAN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.min.js" integrity="sha384-skAcpIdS7UcVUC05LJ9Dxay8AXcDYfBJqt1CJ85S/CFujBsIzCIv+l9liuYLaMQ/" crossorigin="anonymous"></script>
</head>
<body>
		<header>
		<div class="hcontainer">
		<div class="nav-wrapper">
			<div class="left-side">
				<div class="nav-link-wrapper">
				  <a href="foodlogin.jsp">Home</a>
			    </div>

			    <div class="nav-link-wrapper">
				  <a href="about.html">Food Items</a>
			    </div>

			     <div class="nav-link-wrapper">
				  <a href="about.html">Event Menus</a>
			    </div>

			     <div class="nav-link-wrapper">
				  <a href="about.html">Contact</a>
			    </div>
		    </div>

            <div class="right-side">
            	<div class="brand">
			      <div> Hotel Bluestar </div>
			    </div>
		    </div>
	    </div>
	    </div>
	</header>
	
	<div class="firstcontainer">
		<div class="container">
			<div class="jumbotron">
				<h1 class="display-3">Welcome to Food and Beverage Management</h1>
				<p class="lead">Hotel BlueStar facilitate you with our delicious meals and friendly staff.Enjoy delicious food with the views of the Abbey and relax in our newly refurbished Eaterie restaurant.  Our Head Chef is passionate about cooking with local ingredients for inspirational and interesting dishes in our award-winning 2 rosette Eaterie.  The menu encompasses our surroundings and represents the perfect Suffolk culinary experience.</p>
				<hr class="my-4">
				<p class="frontpara">Book an early table from 5pm to 6pm from Monday to Friday to get our special 3 course menu</p>
				<center><a href="#" class="btn btn-info">Learn more!</a></center>
			</div>
		</div>
	</div> <br>

	<%
		String foodid = request.getParameter("foodid");
		String foodname = request.getParameter("foodname");
		String type = request.getParameter("type");
		double unitprice = Double.parseDouble(request.getParameter("unitprice"));
		int qty = Integer.parseInt(request.getParameter("qty"));
		String brand = request.getParameter("brand");
		int pin = Integer.parseInt(request.getParameter("pin"));
		
	%>
<div class="containerh">
<div class="insertcontainer">
	<form action="up" method="post">
	<div class="row">
		<div class="col-25">
			<label for="foodid">Food Id </label>
		</div>
		<div class="col-75"> 
		<input type="text" name="foodid" value="<%=foodid%>" readonly>
		</div>
	</div>
	<div class="row">
		<div class="col-25">
			<label for="foodname"> Food name</label> 
		</div>
		<div class="col-75">
			<input type="text" name="foodname" value="<%=foodname%>">
		</div>
	</div>
	<div class="row">
		<div class="col-25">
			<label for="foodtype"> Food type</label> 
		</div>
		<div class="col-75">
			<input type="text" name="type" value="<%=type%>">
		</div>
	</div>
	<div class="row">
		<div class="col-25">
			<label for="unitprice"> Unit price</label> 
		</div>
		<div class="col-75">
			<input type="text" name="unitprice" value="<%=unitprice%>">
		</div>
	</div>
	<div class="row">
		<div class="col-25">
			<label for="qty"> Quantity</label> 
		</div>
		<div class="col-75">
			<input type="text" name="qty" value="<%=qty%>">
		</div>
	</div>
	<div class="row">
		<div class="col-25">
			<label for="brand"> Brand</label> 
		</div>
		<div class="col-75">
			<input type="text" name="brand" value="<%=brand%>">
		</div>
	</div>
	<div class="row">
		<div class="col-25">
			<label for="foodid"> Food Id</label> 
		</div>
		<div class="col-75">
			<input type="text" name="pin" value="<%=pin%>">
		</div>
	</div>
		
		<input type="submit" name="submit" value="Update"> <br>
	</form>
</div>
</div>
</body>
</html>
