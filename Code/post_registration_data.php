<?php include('db_connect.php'); ?>

<?php
if(isset($_POST['submit']))
{  
$First_Name=$_POST['First-Name'];
$Password=$_POST['Password'];
$Last_Name=$_POST['Last-Name'];
$Email=$_POST['email'];
$query="INSERT INTO customerdetails(`First Name`, `Last Name`, `Password`, `Email`)
VALUES('{$First_Name}','{$Last_Name}','{$Password}','{$Email}');";
$performQuery=mysqli_query($connection, $query);
if(!$performQuery)
echo 'Query unsuccessful';
else
echo 'Query successful';
$insertedId=mysqli_insert_id($connection);
}
?>
<?php include('db_close.php'); ?>