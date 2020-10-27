<?php

 include 'conn.php';
 extract($_GET);
 $query=" delete from inventory where Sno='$Sno'";
 mysqli_query($conn,$query);
header('location:inventory_display.php');
?>
