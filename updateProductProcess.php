<?php

	require_once('connectdb.php');
	
	$pname = $_POST['title'];
	$pmodel = $_POST['model'];
	$pbrand = $_POST['brand'];
	$pprice = $_POST['price'];
	$pdes = $_POST['description'];
	$pqty = $_POST['qty'];
	$pimg = $_POST['imageLink'];
    
    date_default_timezone_set('Asia/Manila');  /// creating date_created
    $newdate =date('F j, Y g:i:a  ');          /// date_created format
    

    $query="UPDATE product SET model = '$pmodel', brand = '$pbrand', price = '$pprice', description = '$pdes', QTY = '$pqty', imageLink = '$pimg', date_updated = '$newdate' WHERE title = '$pname' ";

$response = @mysqli_query($dbconn,$query);


if(@mysqli_query($dbconn, $query)){
		echo"<script>window.alert('Change Saved. Please check the new updated information');</script>";
		echo"<script>location.href='dash.php';</script>";
		}else{
		echo mysqli_error($dbconn);
		}
?>

