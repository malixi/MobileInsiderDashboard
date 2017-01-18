<?php

    SESSION_start();

	require_once('connectdb.php');
	
	$cfname = $_POST['firstname'];
	$clast = $_POST['lastname'];
	$cemail = $_POST['email'];
	$cpassword = $_POST['pw'];
	$cpass1 = $_POST['pw1'];
	$cbod = $_POST['bday'];
    
    date_default_timezone_set('Asia/Manila');  /// creating date_created
    $newdate =date('F j, Y g:i:a  ');          /// date_created format

    

    $query="UPDATE userinfo SET last_name = '$clast', email = '$cemail', password = '$cpassword', bday = '$cbod', date_updated = '$newdate' WHERE first_name = '$cname' ";

$response = @mysqli_query($dbconn,$query);


if(@mysqli_query($dbconn, $query)){
		echo"<script>window.alert('Change Saved. Please check the new updated information');</script>";
		echo"<script>location.href='dash.php';</script>";
		}else{
		echo mysqli_error($dbconn);
		}
?>

	