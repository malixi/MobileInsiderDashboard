
<?php

session_start();
DEFINE ('DB_USER', 'root');
DEFINE ('DB_PASSWORD', '');
DEFINE ('DB_HOST', 'localhost');
DEFINE ('DB_NAME', 'store');

$dbconn = @mysqli_connect(DB_HOST,DB_USER, DB_PASSWORD, DB_NAME)
OR die('could not connect to MariaDB'.mysqli_connect_error());


?>

<?php
    mysql_connect("localhost", "root", "") or die("Error connecting to database: ".mysql_error());
    mysql_select_db("store") or die(mysql_error());

?>


<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title> MobileInsider Admin </title>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/datepicker3.css" rel="stylesheet">
<link href="css/styles.css" rel="stylesheet">

<!--Icons-->
<script src="js/lumino.glyphs.js"></script>

<!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<script src="js/respond.min.js"></script>
<![endif]-->

</head>

<body>
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#sidebar-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="dash.php"><span>MobileInsider</span>Admin</a>
				<ul class="user-menu">
					<li class="dropdown pull-right">

						<a href="#" class="dropdown-toggle" data-toggle="dropdown"><svg class="glyph stroked male-user"><use xlink:href="#stroked-male-user"></use></svg> <?php
	echo "Welcome Back Admin! : (".$_SESSION['fname']." ".$_SESSION['lname'].")";
?><span class="caret"></span></a>

						<ul class="dropdown-menu" role="menu">
						<!--	<li><a href="#"><svg class="glyph stroked male-user"><use xlink:href="#stroked-male-user"></use></svg> Profile</a></li>
							<li><a href="#"><svg class="glyph stroked gear"><use xlink:href="#stroked-gear"></use></svg> Settings</a></li>-->
							<li><a href="logout.php"><svg class="glyph stroked cancel"><use xlink:href="#stroked-cancel"></use></svg> Logout</a></li>
						</ul>
					</li>
				</ul>
			</div>

		</div><!-- /.container-fluid -->
	</nav>

	<div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">

      <form role="search" action="dashresults.php" method="GET">
        <input type="text" name="query" class="form-control" placeholder=" Title / Brand Only "/>
        <input type="submit" value="Search"/>
    </form>


		<ul class="nav menu">
			<li class="active"><a href="dash.php"><svg class="glyph stroked dashboard-dial"><use xlink:href="#stroked-dashboard-dial"></use></svg> Dashboard</a></li>

			<li><a href="addproduct.php"><svg class="glyph stroked plus sign"><use xlink:href="#stroked-plus-sign"/></svg></svg> Add Product </a></li>

            <li><a href="addbrand.php"><svg class="glyph stroked star"><use xlink:href="#stroked-star"/></svg>
            </svg> Add Brand </a></li>

            <li><a href="listbrands.php"><svg class="glyph stroked clipboard with paper"><use xlink:href="#stroked-clipboard-with-paper"/></svg>
   </svg>
            </svg> List All The BRANDS </a></li>
          <!--
			<li><a href="charts.html"><svg class="glyph stroked line-graph"><use xlink:href="#stroked-line-graph"></use></svg> Charts</a></li>
			<li><a href="tables.html"><svg class="glyph stroked table"><use xlink:href="#stroked-table"></use></svg> Tables</a></li>
			<li><a href="forms.html"><svg class="glyph stroked pencil"><use xlink:href="#stroked-pencil"></use></svg> Forms</a></li>
			<li><a href="panels.html"><svg class="glyph stroked app-window"><use xlink:href="#stroked-app-window"></use></svg> Alerts &amp; Panels</a></li>
			<li><a href="dash.php"><svg class="glyph stroked star"><use xlink:href="#stroked-star"></use></svg> Home</a></li>
			<li class="parent ">
				<a href="#">
					<span data-toggle="collapse" href="#sub-item-1"><svg class="glyph stroked chevron-down"><use xlink:href="#stroked-chevron-down"></use></svg></span> Dropdown
				</a>
				<ul class="children collapse" id="sub-item-1">
					<li>
						<a class="" href="#">
							<svg class="glyph stroked chevron-right"><use xlink:href="#stroked-chevron-right"></use></svg> Sub Item 1
						</a>
					</li>
					<li>
						<a class="" href="#">
							<svg class="glyph stroked chevron-right"><use xlink:href="#stroked-chevron-right"></use></svg> Sub Item 2
						</a>
					</li>
					<li>
						<a class="" href="#">
							<svg class="glyph stroked chevron-right"><use xlink:href="#stroked-chevron-right"></use></svg> Sub Item 3
						</a>
					</li>
				</ul>
			</li>
			<li role="presentation" class="divider"></li>
			<li><a href="login.html"><svg class="glyph stroked male-user"><use xlink:href="#stroked-male-user"></use></svg> Login Page</a></li>
		</ul>

          -->

	</div><!--/.sidebar-->

	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">

<?php


$querry = "SELECT *from product";

$response = @mysqli_query($dbconn, $querry);

if($response) {
  echo "<table border='1'>";
  echo "<tr><td>Product ID </td><td>Product Name</td><td>Product Price</td>";




  while ($row = @mysqli_fetch_array($response)) {
   echo "<tr><td>";
   echo $row['product_id'] . '</td><td>';
   echo $row['title'] . '</td><td>';
   echo $row['price'] . '</td><td>';

  }
 echo "</table>";
} else {
 echo "No records to display from Product Database";
}


?>

		</div><!--/.row-->


	</div>	<!--/.main-->

	<script src="js/jquery-1.11.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/chart.min.js"></script>
	<script src="js/chart-data.js"></script>
	<script src="js/easypiechart.js"></script>
	<script src="js/easypiechart-data.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>

</body>



</html>
