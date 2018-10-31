<?php

session_start();
if(!isset($_SESSION["uid"])){
	header("location:index.php");
}
?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>todoanime</title>
		<link rel="stylesheet" href="css/bootstrap.min.css"/>
		<script src="js/jquery2.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="main.js"></script>
	</head>
<body>
	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<a href="#" class="navbar-brand">Tienda tusolutionweb</a>
			</div>
			<ul class="nav navbar-nav">
					<li><a href="home.php"><span class="glyphicon glyphicon-home"></span>Nosotros</a></li>
				<li><a href="#"><span class="glyphicon glyphicon-modal-window"></span>Producto</a></li>
			</ul>
		</div>
	</div>

</body>
</html>
