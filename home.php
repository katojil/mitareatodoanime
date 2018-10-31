<?php
session_start();
if(isset($_SESSION["uid"])){
	header("location:profile.php");
}
?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link rel="icon" href="product_images/logo.png"/>
		<title>todoanime</title>
		<link rel="stylesheet" href="css/bootstrap.min.css"/>
		<script src="js/jquery2.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="main.js"></script>
		<style>
			@media screen and (max-width:480px){
				#search{width:80%;}
				#search_btn{width:30%;float:right;margin-top:-32px;margin-right:10px;}
			}
		</style>
	</head>
<body background='https://www.wallpaperup.com/uploads/wallpapers/2014/01/11/224286/da102530a3075e1c08f391fa4b3cacee-700.jpg'>
	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#collapse" aria-expanded="false">
					<span class="sr-only">navegación</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>

			</div>
		<div class="collapse navbar-collapse" id="collapse">
			<ul class="nav navbar-nav">
				<li><a href="home.php"><span class="glyphicon glyphicon-home"></span>Nosotros</a></li>
				<li><a href="index.php"><span class="glyphicon glyphicon-modal-window"></span>Producto</a></li>
				<li style="width:300px;left:10px;top:10px;"><input type="text" class="form-control" id="search"></li>
				<li style="top:10px;left:20px;"><button class="btn btn-primary" id="search_btn">Buscar</button></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-shopping-cart"></span>Cart<span class="badge">0</span></a>
					<div class="dropdown-menu" style="width:400px;">
						<div class="panel panel-success">
							<div class="panel-heading">
								<div class="row">
									<div class="col-md-3">Sl.No</div>
									<div class="col-md-3">Imagen del producto</div>
									<div class="col-md-3">nombre del producto</div>
									<div class="col-md-3">Precio en $.</div>
								</div>
							</div>
							<div class="panel-body"></div>
							<div class="panel-footer"></div>
						</div>
					</div>
				</li>
				<li><a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-user"></span>Registrarse</a>
					<ul class="dropdown-menu">
						<div style="width:300px;">
							<div class="panel panel-primary">
								<div class="panel-heading">Iniciar sesión</div>
								<div class="panel-heading">
									<label for="email">Email</label>
									<input type="email" class="form-control" id="email" required/>
									<label for="email">Password</label>
									<input type="password" class="form-control" id="password" required/>
									<p><br/></p>
									<a href="#" style="color:white; list-style:none;"> Password Olvidado</a><input type="submit" class="btn btn-success" style="float:right;" id="login" value="Login">
								</div>
								<div class="panel-footer" id="e_msg"></div>
							</div>
						</div>
					</ul>
				</li>
				<li><a href="customer_registration.php"><span class="glyphicon glyphicon-user"></span>Regístrate</a></li>
			</ul>
		</div>
	</div>
</div>
<br>
<br>
<div class="article_a">

	<div><h1>TODOANIME</h1></div>
	<h2><strong>¿Quiénes Somos?</strong></h2>
		<div><p>TODOANIME, es una pagina dirigida  a personas interesadas en el manga y anime.</p>
		<p>todo el contenido esta con la mejor calidad en impresiones, audio y video,</p>
		<p>de esta manera ofrecemos a los creadores de este tipo de entretenimiento </p>
		<p>facilidad para publicar sus obras y venderlas. Las compras se realizan mediante PayPal</p>
		<p>nota:pagina creada por actividades educativas -es falso- </p>
		</div>
		<div>
			<h3><p><strong>Contactenos: </strong></p></h3>
			<p>tel:3135-4409</p>
			<p>correo:s373v@yahoo.es</p>
	</div>
		<h4><strong>Estamos ubicados en Quetzaltenango,Guatemala</strong></h4>
		<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d7713.250836240066!2d-91.5370768412781!3d14.846266517077341!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1ses!2sgt!4v1540863303108" width="400" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>

</div>

</div>

</body>
</html>
