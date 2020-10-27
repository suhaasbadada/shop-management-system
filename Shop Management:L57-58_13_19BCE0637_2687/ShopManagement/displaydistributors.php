
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
		<h1>Distributors Quick Access</h1>

		<div class="container">
			

			<table>
				<tr>
					<th>Distributor ID</th>
					<th>Name</th>
					<th>Address</th>
					<th>District</th>
					<th>State</th>
					</tr> <br>
			

			<?php

			$conn=mysqli_connect("localhost","root","");
			$db=mysqli_select_db($conn,'dbmsfinal');
			$query="SELECT * FROM distributor";
			$query_run=mysqli_query($conn,$query);



			if(mysqli_num_rows($query_run)>0)
			{		


				while($row=mysqli_fetch_array($query_run))
				{
					 ?>
					 <tr>
					 <td><?php echo $row['Distributor_ID'] ?></td>	
					 <td><?php echo $row['Name'] ?></td>	
					 <td><?php echo $row['Address'] ?></td>		
					 <td><?php echo $row['District'] ?></td>	
					 <td><?php echo $row['State'] ?></td>	
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

