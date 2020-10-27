<?php
	session_start();
	
?>

<!DOCTYPE html>
<html>
<head>
	<title>Home Page</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body style="background-color:#7f8c8d">

	<div id="main-wrapper"> 
		<center>
			<h2>Home Page</h2>
			<h3>Welcome 
			<?php echo $_SESSION['username'] ?>
			</h3>
			<img src="images/avatar.png" class="avatar"/>
		</center>
	

	<form class="myloginform" action="homepage.php" method="post">
		<a href="displayproducts.php" ><input type="button" id="login_button" value="Product Details"/><br>	
		<a href="displaydistributors.php" ><input type="button" id="login_button" value="Distributor Details"/><br>	
		<a href="orders_create.php" ><input type="button" id="login_button" value="Orders"/><br>	
		<a href="order_details_create.php" ><input type="button" id="login_button" value="Order Details"/><br>	
		<a href="customer_create.php" ><input type="button" id="login_button" value="Customers"/><br>
		<a href="inventory_create.php" ><input type="button" id="login_button" value="My Inventory"/><br>
		
		
		<a href="analysis.php" ><input type="button" id="login_button" value="Analysis"/><br>
										

		<br>
		<br>
		<br>
		<br>


		<a href="index.php"><input name="logoutt" type="button" id="logout_button" value="Log Out"/><br>


	</form>
	<?php
		if(isset($_POST['logoutt']))
		{
			session_destroy();
			header('location:index.php');
		}

	?>
	</div>

 s

</body>
</html>

