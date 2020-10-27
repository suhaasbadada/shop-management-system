<?php

$con=mysqli_connect("localhost","root","") or die("unable to connect");
	mysqli_select_db($con,"dbmsfinal");

if(count($_POST)!=0)
{
	extract($_POST);
	$query = "insert into inventory (Product_ID,Unit_or_Quantity,TBV,PriceUnit,Distributor_ID) values('$Product_ID','$Unit_or_Quantity','$TBV','$PriceUnit','$Distributor_ID');";
	echo $query;
	$result=mysqli_query($con,$query);
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
<body>
<br><center><div id="center_button"><button onclick="location.href='homepage.php'">Back to Home</button> </center><br>
	<div class="container">
		<div class'"row">
			<div class="col-lg-6 m-auto">
				<form method="post">
					<div class="card">
						<div class="card-header bg-dark">
							<h1 class="text-center text-white">Insert into Inventory</h1>
						</div>
						<div class="form-group">
							<label for="Product_ID">Product ID</label>
							<input type="text" class="form-control" name="Product_ID">
						</div>
						<div class="form-group">
							<label for="Unit_or_Quantity">Unit or Quantity</label>
							<input type="text" class="form-control" name="Unit_or_Quantity">
						</div>
						<div class="form-group">
							<label for="TBV">TBV</label>
							<input type="text" class="form-control" name="TBV">
						</div>
						<div class="form-group">
							<label for="PriceUnit">Price/Unit</label>
							<input type="text" class="form-control" name="PriceUnit">
						</div>
						<div class="form-group">
							<label for="Distributor_ID">Distributor ID</label>                    //make it autosuggestive.
							<input type="text" class="form-control" name="Distributor_ID">
						</div>
						
						<br>
						<input type="submit" value="Submit" class="btn btn-success">
						
					</div>
				</form>
				<br>
				<h5><a href="inventory_display.php"><input type="button" class="btn btn-primary" value="View the Inventory"></a></h5>
			</div>
		</div>
	</div>
</body>
</html>