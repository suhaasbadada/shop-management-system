<?php
include 'conn.php';
if(count($_POST)!=0)
{
	extract($_POST);
	extract($_GET);
	$query="update orders set Order_Date='$Order_Date', Customer_ID='$Customer_ID' where Order_ID='$Order_ID';
			";
	
	echo $query;
	$result=mysqli_query($conn,$query);
	if($result==true)
	{
		echo "Record inserted";
	}
	else
	{
		echo "Record insertion failed";
	}
}
?>



<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA_Compatible" content="ie-edge">
	<title>Document</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body><br><br>
<br><center><div id="center_button"><button onclick="location.href='homepage.php'">Back to Home</button> </center><br>
	<div class="container">
		<div class'"row">
			<div class="col-lg-6 m-auto">
				<form method="post">
					<div class="card">
						<div class="card-header bg-dark">
							<h1 class="text-center text-white">Update order details here</h1>
						</div>
						<div class="form-group" >
							<label for="Order_Date">Order Date</label>                   
							<input type="text" class="form-control" name="Order_Date">
						</div>
						
						<div class="form-group">
							<label for="Customer_ID">Customer ID</label>                   
							<input type="text" class="form-control" name="Customer_ID">
						</div>												
						
						<br>
						<input type="submit" value="Submit" class="btn btn-success">
						
					</div>
				</form>
				<br>
				<h5><a href="orders_display.php"><input type="button" class="btn btn-primary" value="View Order Details"></a></h5>
			</div>
		</div>
	</div>
</body>
</html>