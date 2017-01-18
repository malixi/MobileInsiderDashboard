<?php

session_start();
DEFINE ('DB_USER', 'root');
DEFINE ('DB_PASSWORD', '');
DEFINE ('DB_HOST', 'localhost');
DEFINE ('DB_NAME', 'store');

$dbconn = @mysqli_connect(DB_HOST,DB_USER, DB_PASSWORD, DB_NAME)
OR die('could not connect to MariaDB'.mysqli_connect_error());



	?>

<html>



	<body>
	<H1>WELCOME to Our Beta Site</H1>

    <H2> Hi Welcome back!</H2>

   <?php 
	echo "Name : (".$_SESSION['fname']." ".$_SESSION['lname'].")";
?>
<p><button type="button"><a href="update.html">update</a></button></p>
<p><button type="button"><a href="logout.php">Logout</a></button></p>

</body>
</html>
