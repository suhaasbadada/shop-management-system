


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
<br><center><div id="center_button"><button onclick="location.href='homepage.php'">Back to Home</button> </center><br>
	<div class="container">
		<div class'"row">
			<div class="col-lg-6 m-auto">
				<table class="table">
					<thead class="thead-dark">
						<tr>
						<th scope="col">Sno</th>
						<th scope="col">Product ID</th>
						<th scope="col">Unit or Quantity</th>
						<th scope="col">TBV</th>
						<th scope="col">Price/Unit</th>
						<th scope="col">Distributor_ID</th>
						<th scope="col">Delete</th>
						<th scope="col">Update</th>
						</tr>
					</thead>
					<?php
						include 'conn.php';
						$query="select * from inventory";
						$result=mysqli_query($conn,$query);
						while($res=mysqli_fetch_array($result)){
							
					?>
					<tbody>
						<tr>
						
						<td><?php echo $res['Sno'] ?> </td>
						<td><?php echo $res['Product_ID'] ?> </td>
						<td><?php echo $res['Unit_or_Quantity'] ?> </td>
						<td><?php echo $res['TBV'] ?> </td>
						<td><?php echo $res['PriceUnit'] ?> </td>
						<td><?php echo $res['Distributor_ID'] ?> </td>
				
						<td><a href="inventory_delete.php?Sno=<?php echo $res['Sno']?>"><input type="button" class="btn btn-primary" value="Delete"></a></td>
						<td><a href="inventory_update.php?Sno=<?php echo $res['Sno']?>"><input type="button" class="btn btn-primary" value="Update"></a></td>
						</tr>
					</tbody>
						<?php }?>
				</table>
			</div>
		</div>
	</div>
</body>
</html>
