<?php

	require_once('connectdb.php');
	
	$bname = $_POST['title'];
	//$pmodel = $_POST['model'];
	//$pbrand = $_POST['brand'];
	//$pprice = $_POST['price'];
	$bdes = $_POST['description'];
	//$pqty = $_POST['qty'];
	$bimg = $_POST['imageLink'];
	$bstat = $_POST['status'];
    
    date_default_timezone_set('Asia/Manila');  /// creating date_created
    $newdate =date('F j, Y g:i:a  ');          /// date_created format


    $query = "INSERT INTO brand (name, description, brand_image, date_created, is_active) 
	values ('" . $bname . "','" . $bdes . "','" . $bimg . "','" . $newdate . "','" . $bstat. "')";
	
	if(@mysqli_query($dbconn, $query)){
		echo "<script>location.href='addbrandfinish.php';</script>";
	}else {
		echo mysqli_error($dbconn);
	}
?>