<?php

 include 'conn.php';
 extract($_GET);
 $query="delete from customer where Customer_ID='$Customer_ID'";
 mysqli_query($conn,$query);
header('location:customer_display.php');
?>
