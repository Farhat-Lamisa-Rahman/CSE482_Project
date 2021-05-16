<?php include('db_connect.php'); ?>

<?php

$Password=$_POST['Password'];
$Email=$_POST['email'];
  $sql = "SELECT `Password`, `Email` FROM `customerdetails` WHERE Email LIKE '%$Email%'";
  $result = $connection->query($sql);
  if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) 
    {
      
      if($Email==$row["Email"] && $Password==$row["Password"])
      {
        header("Location: orderedinfo.php"); 
      }
      else echo "<br>"." Try again !!!  " ;
    }
  } 


$connection->close();
?>