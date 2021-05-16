<?php

echo("OK!");


$Name= "Lamisa";
$Code=$_POST[$item["code"]];
$Quantity=$_POST['quantity'];
$Price=$_POST['price'];
$query="INSERT INTO orderinfo(`Name`, `Code`, `Quantity`, `Price`)
VALUES('{$Name}','{$Code}','{$Quantity}', '{$Price}');";
$performQuery=mysqli_query($connection, $query);
if(!$performQuery)
echo 'Query unsuccessful';
else
echo 'Query successful';
$insertedId=mysqli_insert_id($connection);

?>
