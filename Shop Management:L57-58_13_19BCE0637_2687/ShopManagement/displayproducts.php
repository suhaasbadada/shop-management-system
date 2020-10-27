
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
<br><center><div id="center_button"><button onclick="location.href='homepage.php'">Back to Home</button> </center><br>
	<center>
		<h1>List of Products</h1>

		<div class="container">
			

			<table>
				<tr>
					<th>Product ID</th>
					<th>Product Name</th>
					<th>Unit</th>
					<th>PcsPacket</th>
					<th>PcsCarton</th>
					<th>MRPUnit</th>
					<th>PriceUnit</th>
					<th>BV</th>
					<th>GST</th>
					<th>Category_ID</th>
					
					
					
				</tr> <br>
			

			<?php

			$conn=mysqli_connect("localhost","root","");
			$db=mysqli_select_db($conn,'dbmsfinal');
			$query="SELECT products.Product_ID,products.Name,products.Unit,products.PcsPacket,products.PcsCarton,products.MRPUnit,products.PriceUnit,products.BV,products.GST,product_category.Category_ID,product_category.Name FROM products INNER JOIN product_category ON products.Category_ID=product_category.Category_ID";
			$query_run=mysqli_query($conn,$query);



			if(mysqli_num_rows($query_run)>0)
			{		


				while($row=mysqli_fetch_array($query_run))
				{
					 ?>
					 <tr>
					 <td><?php echo $row['Product_ID'] ?></td>	
					 <td><?php echo $row['Name'] ?></td>	
					 <td><?php echo $row['Unit'] ?></td>		
					 <td><?php echo $row['PcsPacket'] ?></td>	
					 <td><?php echo $row['PcsCarton'] ?></td>	
					 <td><?php echo $row['MRPUnit'] ?></td>	
					 <td><?php echo $row['PriceUnit'] ?></td>	
					 <td><?php echo $row['BV'] ?></td>	
					 <td><?php echo $row['GST'] ?></td>	
					 <td><?php echo $row['Category_ID'] ?></td>		
					 					
					 	
					 
					 </tr>
					<?php 
				}

			}


			 ?>


			 </table>
		</div>

	
	</center>
</body>
</html>

