<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA_Compatible" content="ie-edge">
	<title>Document</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body style="background-color:#7f8c8d ><br><br> 
<br><center><div id="center_button"><button onclick="location.href='homepage.php'">Back to Home</button> </center><br>
 <center style="font-size:30px">  Orders</center><br>
	<div class="container">
		<div class="row">
			<div class="col-lg-6 m-auto">
				<table class="table">
					<thead class="thead-dark">
						<tr>
						<th scope="col">Order ID</th>
						<th scope="col">Order Date</th>
						<th scope="col">Customer ID</th>
						
						<th scope="col">Delete</th>
						<th scope="col">Update</th>
						</tr>
					</thead>
					<?php
						include 'conn.php';
						$query="select Order_ID,Order_Date,Customer_ID from orders;";
						$result=mysqli_query($conn,$query);
						while($res=mysqli_fetch_array($result)){
							
					?>
					<tbody>
						<tr>
						
						<td><?php echo $res['Order_ID'] ?> </td>
						<td><?php echo $res['Order_Date'] ?> </td>
						<td><?php echo $res['Customer_ID'] ?> </td>


						<td><a href="orders_delete.php?Order_ID=<?php echo $res['Order_ID']?>"><input type="button" class="btn btn-primary" value="Delete" style="font-size:12px"></a></td>
						<td><a href="orders_update.php?Order_ID=<?php echo $res['Order_ID']?>"><input type="button" class="btn btn-primary" value="Update" style="font-size:12px"></a></td>
						</tr>
					</tbody>
						<?php }?>
				</table>
			</div>
		</div>
	</div>
</body>
</html>