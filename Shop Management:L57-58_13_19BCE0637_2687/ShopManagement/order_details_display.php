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
<br><center><div id="center_button"><button onclick="location.href='homepage.php'"></button> </center><br>
<br><center><div id="center_button"><button onclick="location.href='homepage.php'">Back to Home</button> </center><br>  <center style="font-size:30px">  Order Details</center><br>
	<div class="container">
		<div class="row">
			<div class="col-lg-6 m-auto">
				<table class="table">
					<thead class="thead-dark">
						<tr>
						<th scope="col">Sno</th>
						<th scope="col">Order ID</th>
						<th scope="col">Unit</th>
						<th scope="col">Product ID</th>
						<th scope="col">Amount</th>
						<th scope="col">Delete</th>
						</tr>
					</thead>
					<?php
						include 'conn.php';
						$query="select Sno,Order_ID,Unit,Product_ID,Amount from order_details;";
						$result=mysqli_query($conn,$query);
						while($res=mysqli_fetch_array($result)){
							
					?>
					<tbody>
						<tr>
						
						<td><?php echo $res['Sno'] ?> </td>
						<td><?php echo $res['Order_ID'] ?> </td>
						<td><?php echo $res['Unit'] ?> </td>
						<td><?php echo $res['Product_ID'] ?> </td>
						<td><?php echo $res['Amount'] ?> </td>

						<td><a href="order_details_delete.php?Sno=<?php echo $res['Sno']?>"><input type="button" class="btn btn-primary" value="Delete" style="font-size:12px"></a></td>
						</tr>
					</tbody>
						<?php }?>
				</table>
			</div>
		</div>
	</div>
</body>
</html>