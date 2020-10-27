<?php
	
	session_start();
	require 'dbconfig/config.php';

?>

<!DOCTYPE html>
<html>
<head>
	<title>Login Page</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body style="background-color:#7f8c8d">

	<center>
	<div id="main-wrapper"> 
		<center>
			<h2>Login Form</h2>
			<img src="images/avatar.png" class="avatar"/>
		</center>
	

	<form class="myloginform" action="index.php" method="post">
		<label><b>Username:</label> <br>
		<input name="username" type="text" class="inputvalues" placeholder="Type your ID"/><br>

		<label><b>Password:</label><br>
		<input name="password" type="password" class="inputvalues" placeholder="Password"/><br>
		<input name="login" type="submit" id="login_button" value="Login"/><br>
		<a href="registration.php"><input type="button" id="register_button" value="Register"/><br>


	</form>
	<?php
	if(isset($_POST['login']))
	{
		$username=$_POST['username'];
		$password=$_POST['password'];
		$query="SELECT * FROM user WHERE username='$username' AND password='$password'";

		$query_run=mysqli_query($con,$query);

		if(mysqli_num_rows($query_run)>0)
		{
			// valid
			$_SESSION['username']=$username;

			header('location:homepage.php');
		}
		else
		{
			echo '<script type="text/javascript"> alert ("Invalid credentials!")</script>';
		}
	}


	?>


	</div>
</center>
 

</body>
</html>

