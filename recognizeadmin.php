<?php

//putek gumana ka rin naiiyak na ako huhuhu rak na ituh

session_start();

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "store";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// prepare and bind

   $aemail=$_POST['email'];
   $apassword=$_POST['pw'];


   $stmt = $conn->prepare("SELECT * FROM admins WHERE email=? AND password=? ");
   $stmt->bind_param('ss', $aemail, $apassword);
   $stmt->execute();
	 $result = $stmt->get_result();

		if($rows = $result->fetch_assoc()){
      $_SESSION['fname']=$rows['firstName'];
    	$_SESSION['lname']=$rows['lastName'];
    	$_SESSION['password']=$rows['password'];
    	$_SESSION['email']=$rows['email'];

      echo"<script>location.href='dash.php';</script>";


		}else{
			echo"<script>window.alert('Email Address/Password Incorrect');</script>";
			echo"<script>location.href='index.php';</script>";
		}

    $stmt->close();
    $conn->close();
    ?>
