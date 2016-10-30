<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<title>Imobiliaria</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="css/style.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
.carousel-inner>.item>img, .carousel-inner>.item>a>img {
	width: 70%;
	margin: auto;
}
</style>
<body>
	<!-- Barra de login -->
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<a class="navbar-brand"><img src="img/logo.png" /></a>
			<form class="navbar-form navbar-left">
				<div class="form-group">
					<input type="text" class="form-control" placeholder="Pesquisar">
				</div>
				<button type="submit" class="btn btn-default"
					onclick="consultarImovel()">Pesquisar</button>
			</form>
			<ul class="nav navbar-nav ">

				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">Ordenar <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">Maior Valor</a></li>
						<li role="separator" class="divider"></li>
						<li><a href="#">Menor Valor</a></li>
					</ul></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown"><b>Login</b> <span
						class="glyphicon glyphicon-user" aria-hidden="true"></span></a>
					<ul id="login-dp" class="dropdown-menu"
						style="padding: 15px; min-width: 250px;">
						<li>
							<div class="row">
								<form action="VerificarUser" class="form" role="form"
									method="post" action="login" accept-charset="UTF-8"
									id="login-nav">
									<div class="form-group">
										<label class="sr-only">Email</label> <input type="email"
											class="form-control" name="email"
											placeholder="Digite seu email" required>
									</div>
									<div class="form-group">
										<label class="sr-only">Password</label> <input type="password"
											class="form-control" name="senha"
											placeholder="Digite sua Senha" required>
									</div>
									<div class="form-group">
										<button type="submit" class="btn btn-primary btn-block">Entrar</button>
									</div>
								</form>
							</div>
						</li>

					</ul></li>
			</ul>
		</div>
	</nav>

	<hr>

	<c:forEach items="${imovel}" var="c">
		<div class="row">
			<div class="col-sm-6 col-md-4">
				<div class="thumbnail">
					<p>${c.titulo}</p>
					<img src="..." alt="...">
					<p>${c.img}</p>
					<div class="caption">
						<p>${c.descricao}</p>
						<p>${c.valor}</p>
						<p>
							<a href="#" class="btn btn-primary" role="button">Comprar</a> <a
								href="#" class="btn btn-default" role="button">Descrição</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</c:forEach>
	<div id="footer">
		<div id="footer-left">
			<div id="link" style="text-align: center;">Imobiliaria</div>
		</div>
	</div>
</body>
</html>