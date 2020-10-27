
<?php

	$conn=mysqli_connect("localhost","root","");
	$db=mysqli_select_db($conn,'dbmsfinal');
	$query="SELECT Commission_percentage FROM bvlevel where AggBV<=(
			SELECT
			SUM(order_details.Unit*Products.BV)
			FROM Order_Details 
			INNER JOIN Products ON
			Order_Details.Product_ID=Products.Product_ID
			)";

	$query_run=mysqli_query($conn,$query);


	if(mysqli_num_rows($query_run)>0)
	{		


	while($row=mysqli_fetch_array($query_run))
		{
			?>

			<?php 
			$x=$row['Commission_percentage'];
					

			}
		}

?>

<!DOCTYPE html>
<html>
<head>
	<title>Business Progress</title>
	
	<link rel="stylesheet" href="css/stylebar.css">
</head>
<body style="background-color:#7f8c8d">


<div id="main-wrapper">	
<center>	

		<form>	
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>

	<label>Progress:</label>
	<progress value=<?php echo $x ?> max=35></progress>

	<label for="thirty five"class="label">35% </label>
	</form>
	
</center>



</div>
</body>
</html>

<!--
SELECT Commission_percentage FROM bvlevel where AggBV<=(
SELECT
SUM(order_details.Unit*Products.BV)
FROM Order_Details 
INNER JOIN Products ON
Order_Details.Product_ID=Products.Product_ID
);
-->