<?php

 include 'conn.php';
 extract($_GET);
 $query =" update inventory set Unit_or_Quantity = Unit_or_Quantity + $Unit where Product_ID='$Product_ID' ;";
 $query ="delete from order_details where Sno='$Sno' ";
 mysqli_multi_query($conn,$query);
header('location:order_details_display.php');
?>
