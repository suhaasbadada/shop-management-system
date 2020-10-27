<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA_Compatible" content="ie-edge">
	<title>Document</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body style="background-color:#7f8c8d>
<center><div id="center_button"><button onclick="location.href='index.php'"></button> </center><br>
<center><div id="center_button"><button onclick="location.href='homepage.php'">Back to Home</button> </center><br>

	<div class="container">
		<div class'"row">
			<div class="col-lg-6 m-auto">
				<table class="table">
					<thead class="thead-dark">
						<tr>
						<th scope="col">Customer ID</th>
						<th scope="col">First Name</th>
						<th scope="col">Middle Name</th>
						<th scope="col">Last Name </th>
						<th scope="col">Email ID</th>	
						<th scope="col">Delete</th>
						<th scope="col">Update</th>
						</tr>
					</thead>
					<?php
						include 'conn.php';
						$query="select * from customer";
						$result=mysqli_query($conn,$query);
						while($res=mysqli_fetch_array($result)){
							
					?>
					<tbody>
						<tr>
						
						<td><?php echo $res['Customer_ID'] ?> </td>
						<td><?php echo $res['First_Name'] ?> </td>
						<td><?php echo $res['Middle_Name'] ?> </td>
						<td><?php echo $res['Last_Name'] ?> </td>
						<td><?php echo $res['Email_ID'] ?> </td>
				
						<td><a href="customer_delete.php?Customer_ID=<?php echo $res['Customer_ID']?>"><input type="button" class="btn btn-primary" value="Delete"></a></td>
						<td><a href="customer_update.php?Customer_ID=<?php echo $res['Customer_ID']?>"><input type="button" class="btn btn-primary" value="Update"></a></td>
						</tr>
					</tbody>
						<?php }?>
				</table>
			</div>
		</div>
	</div>
</body>
</html>
