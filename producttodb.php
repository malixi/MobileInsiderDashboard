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


    $query = "INSERT INTO product (title, model, brand, price, description, QTY, date_created, imageLink) 
	values ('" . $pname . "','" . $pmodel . "','" . $pbrand . "','" . $pprice . "','" . $pdes. "','" . $pqty . "','" . $newdate . "','" . $pimg. "')";
	
	if(@mysqli_query($dbconn, $query)){
		echo "<script>location.href='addproductfinish.php';</script>";
	
	}else {
		echo mysqli_error($dbconn);
	}
?>