<?php

session_start();

?>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Mobile Insider Admin</title>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/datepicker3.css" rel="stylesheet">
<link href="css/styles.css" rel="stylesheet">

<!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<script src="js/respond.min.js"></script>
<![endif]-->


  <!--  <script type="text/javascript">
    var a = Math.ceil(Math.random() * 10);
    var b = Math.ceil(Math.random() * 10);
    var c = a + b
    function DrawBotBoot()
    {
        document.write("What is "+ a + " + " + b +"? ");
        document.write("<input id='BotBootInput' type='text' maxlength='2' size='2'/>");
    }
    function ValidBotBoot(){
        var d = document.getElementById('BotBootInput').value;
        if (d == c) return true;
        return false;

    }
    </script> -->


</head>

<body>

	<div class="row">
		<div class="col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-4 col-md-offset-4">
			<div class="login-panel panel panel-default">
				<div class="panel-heading">Hi! Team Ano Member </div>
				<div class="panel-body">
				  <form class="form" action="recognizeadmin.php" method="post">
						<fieldset>
							<div class="form-group">
								<input class="form-control" placeholder="E-mail" name="email" type="email" required>
								 <small id="emailHelp" class="form-text text-muted"> Only the register members of Mobile Insider admins can log in whohohoo! </small>
							</div>
							<div class="form-group">
								<input class="form-control" placeholder="Enter your Password" name="pw" type="password" required>
							</div>


						 <!--    <div class="form-group">
                              Are you human?<br />

                               <script type="text/javascript">DrawBotBoot()</script>
                               <input id="Button1" type="button" value="Check" onclick="alert(ValidBotBoot());"/>
                             </div>

                            -->

							<div class="col-sm-offset-2 col-sm-10">
                              <button type="submit" class="btn btn-primary">Log In!</button>
                              <button type="reset" class="btn btn-default">Clear</button>
                            </div>
	         			</fieldset>
					</form>
				</div>
			</div>
		</div><!-- /.col-->
	</div><!-- /.row -->



	<script src="js/jquery-1.11.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/chart.min.js"></script>
	<script src="js/chart-data.js"></script>
	<script src="js/easypiechart.js"></script>
	<script src="js/easypiechart-data.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
	<script>
		!function ($) {
			$(document).on("click","ul.nav li.parent > a > span.icon", function(){
				$(this).find('em:first').toggleClass("glyphicon-minus");
			});
			$(".sidebar span.icon").find('em:first').addClass("glyphicon-plus");
		}(window.jQuery);

		$(window).on('resize', function () {
		  if ($(window).width() > 768) $('#sidebar-collapse').collapse('show')
		})
		$(window).on('resize', function () {
		  if ($(window).width() <= 767) $('#sidebar-collapse').collapse('hide')
		})
	</script>
</body>

</html>
