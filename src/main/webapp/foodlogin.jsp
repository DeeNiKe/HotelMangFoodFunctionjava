<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hotel BlueSky</title>
	<link rel="stylesheet" type="text/css" href="./styles.css">
	<!-- CSS Boostrap -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
	<!-- Jquary javascripts -->
	<!-- JQuary csn-->
	<!-- JavaScript Bundle with Popper -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" integrity="sha384-W8fXfP3gkOKtndU4JGtKDvXbO53Wy8SZCQHczT5FMiiqmQfUpWbYdTil/SxwZgAN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.min.js" integrity="sha384-skAcpIdS7UcVUC05LJ9Dxay8AXcDYfBJqt1CJ85S/CFujBsIzCIv+l9liuYLaMQ/" crossorigin="anonymous"></script>
	<script>
		function validate(frm){
			let fid = frm.foodid.value;
			let fpin = frm.pin.value;
			let flag = true;
			
			if(fid == ""){
				alert("Food Id required.");
				frm.foodid.focus();
				flag = false;
			}else if((fid.length) < 0){
				alert("Food id should not 0.");
				frm.foodid.focus();
				flag = false;	
			}
			if(fpin==""){
				alert("Enter pin");
				frm.pin.focus();
				flag = false;
			}else if(isNan(fpin)){
				alert("Enter numaric value");
				frm.pin.focus();
				flag = false;
			}
			return flag;
		}
	</script>
</head>
<body>
	<header>
		<div class="hcontainer">
		<div class="nav-wrapper">
			<div class="left-side">
				<div class="nav-link-wrapper">
				  <a href="#">Home</a>
			    </div>

			    <div class="nav-link-wrapper">
				  <a href="#fooditems">Food Items</a>
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
				<p style="color: red;" class="lead">Hotel BlueStar facilitate you with our delicious meals and friendly staff.Enjoy delicious food with the views of the Abbey and relax in our newly refurbished Eaterie restaurant.  Our Head Chef is passionate about cooking with local ingredients for inspirational and interesting dishes in our award-winning 2 rosette Eaterie.  The menu encompasses our surroundings and represents the perfect Suffolk culinary experience.</p>
				<hr class="my-4">
				<p class="frontpara">Book an early table from 5pm to 6pm from Monday to Friday to get our special 3 course menu</p>
				<center><a href="#" class="btn btn-info">Learn more!</a></center>
			</div>
		</div>
	</div> <br>
	
	<div class="container-fluid">
		<p class="lead">Enter to see the products details by Foodid and PIN number of the products</p>
	</div> <br>
	
	<section id="fooditems">
	<div class="container">
		<form action="enter" method="post" onsubmit="return validate(this)">
			<div class="form-group">
				<div class="form-row">
					<div class="form-group col-md-6">
						<label for="foodid">Food Id</label>
						<input type="text" name="foodid" placeholder="Enter food id" class="form-control">
					</div>
					<div class="form-group col-md-6">
						<label for="pin">PIN</label>
						<input type="password" name="pin" placeholder="Enter food PIN" class="form-control">
					</div>
					<div class="form-group col-md-6">
						<input type="submit" name="submit" value="Check">
					</div>
					<div class="form-group col-md-2">
      					<a href="foodInsert.jsp">
      					<input type="button" class="btn btn-info" name="gotofoodinsert" value="Insert Food">
      					</a>
    				</div>
				</div>
			</div>
		</form>
	</div>
	</section>

</body>
</html>