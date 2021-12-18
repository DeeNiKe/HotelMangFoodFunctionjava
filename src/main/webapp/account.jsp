<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

	<c:forEach var="food" items="${foodinfo}">
	
		<c:set var="foodid" value="${food.foodid}"/>
		<c:set var="foodname" value="${food.foodname}"/>
		<c:set var="type" value="${food.type}"/>
		<c:set var="unitprice" value="${food.unitprice}"/>
		<c:set var="qty" value="${food.qty}"/>
		<c:set var="brand" value="${food.brand}"/>
		<c:set var="pin" value="${food.pin}"/>
		
<div class="accountcontainer">
	<div class="tcon">
	<center>		
	<div class=container>
	<table class="table">
		<thead class="thead-dark">
			<tr>
				<th scope="col">Food Id </th>
				<th scope="col">Food name</th>
				<th scope="col">Food type</th>
				<th scope="col">Unitprice</th>
				<th scope="col">Quantity</th>
				<th scope="col">Brand</th>
				<th scope="col">PIN</th>
			</tr>	
		</thead>
		<tbody>
			<tr>
				<td scope="row">${food.foodid}</td>
				<td>${food.foodname}</td>
				<td>${food.type}</td>
				<td>${food.unitprice}</td>
				<td>${food.qty}</td>
				<td>${food.brand}</td>
				<td>${food.pin}</td> 
			</tr>
		</tbody>
	</table>
</div>
	
	</c:forEach>
	
	<c:url value="foodUpdate.jsp" var="foodUpdate">
		<c:param name="foodid" value="${foodid}"></c:param>
		<c:param name="foodname" value="${foodname}"></c:param>
		<c:param name="type" value="${type}"></c:param>
		<c:param name="unitprice" value="${unitprice}"></c:param>
		<c:param name="qty" value="${qty}"></c:param>
		<c:param name="brand" value="${brand}"></c:param>
		<c:param name="pin" value="${pin}"></c:param>
	</c:url>
	<br>
	<a href="${foodUpdate}">
	<input type="button" name="button" value="Update"> <br>
	</a>
	
		<c:url value="foodDelete.jsp" var="foodDelete">
		<c:param name="foodid" value="${foodid}"></c:param>
		<c:param name="foodname" value="${foodname}"></c:param>
		<c:param name="type" value="${type}"></c:param>
		<c:param name="unitprice" value="${unitprice}"></c:param>
		<c:param name="qty" value="${qty}"></c:param>
		<c:param name="brand" value="${brand}"></c:param>
		<c:param name="pin" value="${pin}"></c:param>
		</c:url>
	
	<br>
	<a href="${foodDelete}">
	<input type="button" name="delete" value="Delete" class="btn btn-warning">
	</a>
	</center>
	</div>
</div>

	<div class="container">
	<form action="#">
	<div class="form-group">
		<input type="text" name="pdfid" placeholder="Enter id" class="form-control">
		<input type="button" class="btn btn-outline-primary" name="pdfsubmit" value="Generate Report">
	</div>
	</form>
	</div>
	
</body>
</html>