<?php

session_start();

DEFINE ('DB_USER', 'root');
DEFINE ('DB_PASSWORD', '');
DEFINE ('DB_HOST', 'localhost');
DEFINE ('DB_NAME', 'store');

$dbconn = @mysqli_connect(DB_HOST,DB_USER, DB_PASSWORD, DB_NAME)
OR die('could not connect to MariaDB'.mysqli_connect_error());


$aemail=$_POST['email'];
$apassword=$_POST['pw'];




$query="SELECT * from admins where email = '".$aemail."' AND password = '".$apassword."'";
$result= mysqli_query($dbconn, $query);
$rows=mysqli_fetch_array($result);

if($aemail==$rows['email']&&$apassword==$rows['password']){



	$_SESSION['fname']=$rows['firstName'];
	$_SESSION['lname']=$rows['lastName'];
	$_SESSION['password']=$rows['password'];
	$_SESSION['email']=$rows['email'];

echo"<script>location.href='dash.php';</script>";


}else{
	
echo"<script>window.alert(' Invalid Account Try Again ');</script>";
echo"<script>location.href='index.php';</script>";}


?>
