<?php include('db_connect.php'); ?>

<?php include('index.php'); 


$Name=$item["name"];
$Code=$item["code"];
$Quantity=$item["quantity"];
$Price=$item["price"];
$query="INSERT INTO orderinfo(`Name`, `Code`, `Quantity`, `Price`)
VALUES('{$Name}','{$Code}','{$Quantity}','{$Price}');";
$performQuery=mysqli_query($connection, $query);
if(!$performQuery)
echo 'Query unsuccessful';
else
echo 'Query successful';
$insertedId=mysqli_insert_id($connection);

?>


