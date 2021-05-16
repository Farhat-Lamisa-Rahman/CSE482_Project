<?php include('db_connect.php'); ?>

<?php include('index.php'); 
echo $item["name"];
echo $item["code"];
echo $item["quantity"];
echo "$ ".$item["price"];

$First_Name=$item["name"];
$Password=$item["code"];
$Last_Name=$item["quantity"];
$Email=$item["price"];
$query="INSERT INTO customerdetails(`First Name`, `Last Name`, `Password`, `Email`)
VALUES('{$First_Name}','{$Last_Name}','{$Password}','{$Email}');";
$performQuery=mysqli_query($connection, $query);
if(!$performQuery)
echo 'Query unsuccessful';
else
echo 'Query successful';
$insertedId=mysqli_insert_id($connection);

?>

