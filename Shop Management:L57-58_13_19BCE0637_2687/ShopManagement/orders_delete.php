<?php

 include 'conn.php';
 extract($_GET);
 $query="delete from orders where Order_ID='$Order_ID'";
 mysqli_query($conn,$query);
header('location:orders_display.php');
?>