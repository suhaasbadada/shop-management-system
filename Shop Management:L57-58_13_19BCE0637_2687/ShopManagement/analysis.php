<!DOCTYPE html>
<html>
<head>
	<title>Products List</title>
	<style>
		body{
			background-color:#7f8c8d;
		}

		table,th,td{
			border: 2px solid black;
			width:1200px;
			background-color:white;
		}

	</style>
</head>
<body>
	<center>
	<div id="center_button">
    <button onclick="location.href='index.php'">Back to Home </button>
</div>
		
		<h1> Highest to Lowest Selling Products of the Month</h1>

		<div class="container">
			

			<table>
				<tr>
					<th>Product ID</th>
					<th>Product Name</th>
					<th>Units Sold</th>
				</tr> <br>
			

			<?php

			$conn=mysqli_connect("localhost","root","");
			$db=mysqli_select_db($conn,'dbmsfinal');
			
			/*
			
						$query="SELECT order_details.Product_ID,products.Name,SUM(order_details.Unit) AS Total
			FROM order_details
			INNER JOIN products
			ON 
			products.Product_ID=order_details.Product_ID
			GROUP BY order_details.product_ID"; 
			*/

					$query ="SELECT inventory.Product_ID, products.Name,SUM(order_details.Unit) AS Total
					   FROM inventory 
					   INNER JOIN products
					   ON
					   inventory.Product_ID = products.Product_ID
					   LEFT JOIN order_details
					   ON
					   inventory.Product_ID=order_details.Product_ID
					   GROUP BY inventory.Product_ID
                       ORDER BY Total DESC ";
					
					

					
			
			$query_run=mysqli_query($conn,$query);

			if(mysqli_num_rows($query_run)>0)
			{		


				while($row=mysqli_fetch_array($query_run))
				{
					 ?>
					 <tr>
					 <td><?php echo $row['Product_ID'] ?></td>	
					 <td><?php echo $row['Name'] ?></td>	
					 <td><?php echo $row['Total'] ?></td>	


					 
					 </tr>
					<?php 
				}

			}


			 ?>


			 </table>
			 <br>
			 <hr color="black">
		</div>
	</center>

<!DOCTYPE html>
<html>
<head>
	<title>Products List</title>
	<style>
		body{
			background-color:#7f8c8d;
		}

		table,th,td{
			border: 2px solid black;
			width:1200px;
			background-color:white;
		}

	</style>
</head>
<body>
	<center>
	<div id="center_button">
    
</div>
		
		<h1>Sales by Category</h1>

		<div class="container">
			

			<table>
				<tr>
					<th>Category Name</th>
					<th>Units Bought</th>
				</tr> <br>
			

			<?php

			$conn=mysqli_connect("localhost","root","");
			$db=mysqli_select_db($conn,'dbmsfinal');


					$query ="SELECT product_category.Name,COUNT(order_details.Unit) AS UnitsBought
							FROM order_details
							INNER JOIN products ON order_details.Product_ID=products.Product_ID
							INNER JOIN product_category ON products.Category_ID=product_category.Category_ID
							GROUP BY product_category.Name";
					

					
			
			$query_run=mysqli_query($conn,$query);

			if(mysqli_num_rows($query_run)>0)
			{		


				while($row=mysqli_fetch_array($query_run))
				{
					 ?>
					 <tr>
					 <td><?php echo $row['Name'] ?></td>	
					 <td><?php echo $row['UnitsBought'] ?></td>		


					 
					 </tr>
					<?php 
				}

			}


			 ?>


			 </table>
			 <br>
			 <hr color="black">
		</div>
	</center>










	<body>
		<center><br><br>
			<h1>Business Progress</h1>
			
			

<?php

	$conn=mysqli_connect("localhost","root","");
	$db=mysqli_select_db($conn,'dbmsfinal');
	$query="SELECT Commission_percentage FROM bvlevel where AggBV<=(
			SELECT
			SUM(order_details.Unit*products.BV)
			FROM order_details 
			INNER JOIN products ON
			order_details.Product_ID=products.Product_ID
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
	<link rel="stylesheet" href="css/stylebar.css">
</head>
<body style="background-color:#7f8c8d">

<div id="main-wrapper">	
<center>	

		<form>	
		

	
	Your discount percentage on products bought is decided by the total business volume that you accumulate during your business period.<br>
	Maximum possible percentage is 35%, the below bar shows your current discount status on the products you buy from the company, from the company's distributors. <br><br>
	
	<progress value=<?php echo $x ?> max=35></progress>
	<label for="thirty five"class="label">35% </label> 
			<br> <?php echo "$x" ?>%
			<br>
			<br>
			<br>
			<br>

	</form>
	
</center>
<!DOCTYPE html>
<html>
<head>
	<title>Products List</title>
	<style>
		body{
			background-color:#7f8c8d;
		}

		table,th,td{
			border: 2px solid black;
			width:1200px;
			background-color:white;
		}

	</style>
</head>
<body>
	<center>
	<div id="center_button">
   
</div>
		
		<h2>Business Volume Table</h2>

		<div class="container">
			

			<table>
				<tr>
					<th>Aggregate BV</th>
					<th>Your Levelt</th>
					<th>Commision Percentage</th>
				</tr> <br>
			

			<?php

			$conn=mysqli_connect("localhost","root","");
			$db=mysqli_select_db($conn,'dbmsfinal');


					$query ="SELECT * FROM bvlevel";
					

					
			
			$query_run=mysqli_query($conn,$query);

			if(mysqli_num_rows($query_run)>0)
			{		


				while($row=mysqli_fetch_array($query_run))
				{
					 ?>
					 <tr>
					 <td><?php echo $row['AggBV'] ?></td>	
					 <td><?php echo $row['Level'] ?></td>		
					 <td><?php echo $row['Commission_percentage'] ?></td>	


					 
					 </tr>
					<?php 
				}

			}


			 ?>


			 </table>
			 <br>
			 <hr color="black">
		</div>
	</center>


</div>
</body>
</html>

		</center>
		<!DOCTYPE html>
<html>
<head>
	<title>Search Data by ID</title>
	<style>
		body{
			background-color:#7f8c8d;
		}

		table,th,td{
			border: 2px solid black;
			width:1100px;
			background-color: lightgreen;
		}
		.btn
		{
			width: 20%;
			height:5%;
			font-size: 22px;
			padding: 0px;
		}
		.btnn
		{
			width: 20%;
			height:5%;
			font-size: 22px;
			padding: 0px;
		}

	</style>
</head>
<body>
	<center>
	<h1>Customer-Order Tracking</h1>
	Search your Customers
		<h3>Search for a record</h3>

		<div class="container">
			<form action="" method="POST">
				<input type="text" name="Customer_ID" class="btn" placeholder="Enter Customer ID"/>
				<br>
				<input type="submit" name="search" class="btn" value="Search"/>
			</form>

			<table>
				<tr>
					<th>Customer_ID</th>
					<th>First_Name</th>
					<th>Last_Name</th>
					<th>Phone_No</th>
					<th>Email_ID</th>
					<th>Total Amount Spent</th>
					<th>Order_ID</th>
				</tr> <br>
			

			<?php

			$conn=mysqli_connect("localhost","root","");
			$db=mysqli_select_db($conn,'dbmsfinal');

			if(isset($_POST['search']))
			{
				$Customer_ID=$_POST['Customer_ID'];

$query=	"SELECT customer.Customer_ID,customer.First_Name,customer.Last_Name,customer_phone.Phone_No,customer.Email_ID,SUM(Purchase_Amount) AS 'Total Amount Spent',orders.Order_ID
						FROM customer INNER JOIN orders ON customer.Customer_ID = orders.Customer_ID 
						INNER JOIN customer_phone ON customer.Customer_ID=customer_phone.Customer_ID
						WHERE customer.Customer_ID='$Customer_ID'
						GROUP BY customer.Customer_ID ";

				$query_run=mysqli_query($conn,$query);


				while($row=mysqli_fetch_array($query_run))
				{
					 ?>
					 <tr>
					 <td><?php echo $row['Customer_ID'] ?></td>	
					 <td><?php echo $row['First_Name'] ?></td>	
					 <td><?php echo $row['Last_Name'] ?></td>		
					 <td><?php echo $row['Phone_No'] ?></td>	
					 <td><?php echo $row['Email_ID'] ?></td>	
					 <td><?php echo $row['Total Amount Spent'] ?></td>
					 <td><?php echo $row['Order_ID'] ?></td>
					 </tr><br>
					<?php 
				}

			}


			 ?>


			 </table>
			 <br>
			 <br>
			 <br>
			 <br>
			 <br>
		</div>

		
	</center>
</body>
</html>
	</body>

</body>
</html>


