<?php
	require 'dbconfig/config.php';
	
?>

<!DOCTYPE html>
<html>
<head>
	<title>Registration Page</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body style="background-color:#7f8c8d">

	<div id="main-wrapper"> 
		<center>
			<h2>Registration Form</h2>
			<img src="images/avatar.png" class="avatar"/>
		</center>
	

	<form class="myloginform" action="registration.php" method="post">
		<label><b>Name:</label> <br>
		<input name="username" type="text" class="inputvalues" placeholder="Full Name" required/><br>

		

		<label><b>Password:</label><br>
		<input name="password" type="password" class="inputvalues" placeholder="Password:" required/><br>

		<label><b>Confirm Password:</label><br>
		
		<input name="cpassword" type="password" class="inputvalues" placeholder="Confirm Password:" required/><br>
		<input name="submit_button" type="submit" id="signup_button" value="Sign Up"/><br>
		<a href="index.php" ><input type="button" id="back_button" value="Back"/><br>


	</form>

	<?php 

	if (isset($_POST['submit_button'])) 
	{
		
		$username=$_POST['username'];
		$password=$_POST['password'];
		$cpassword=$_POST['cpassword'];
		
		if($password==$cpassword)
		{
			$query="SELECT * FROM user WHERE username='$username'";

			$query_run=mysqli_query($con,$query);

			if(mysqli_num_rows($query_run)>0)
			{
				// already user with same username
				echo '<script type="text/javascript"> alert ("User already exists")</script>';
			}
			else
			{
				$query="INSERT INTO user VALUES('$username','$password')"; 

				$query_run=mysqli_query($con,$query);

				if($query_run)
				{
					echo '<script type="text/javascript"> alert ("User registered")</script>';
				}
				else
				{
					echo '<script type="text/javascript"> alert ("Error!")</script>';
				}
			}

		}
		else
		{
			echo '<script type="text/javascript"> alert ("Password does not match")</script>';
		}


	}

	?>

	</div>

 

</body>
</html>

