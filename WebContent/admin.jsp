<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Administração</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/admin.css">
</head>
<body>
	<nav class="navbar navbar-default navbar-static-top" role="navigation"
		style="margin-bottom: 0">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand">Imobiliária Admin 1.0</a>
			</div>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown"><b>Sair</b> <span
						class="glyphicon glyphicon-log-out" aria-hidden="true"></span></a></li>
			</ul>
		</div>

	</nav>
	<nav class="navbar navbar-default sidebar" role="navigation" id="menu">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-sidebar-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
			</div>
			<div class="collapse navbar-collapse"
				id="bs-sidebar-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">Home<span
							style="font-size: 16px;"
							class="pull-right hidden-xs showopacity glyphicon glyphicon-home"></span></a></li>
					<li class="dropdown"><a href="introAdm.jsp" class="dropdown-toggle"
						data-toggle="dropdown">Usuários <span class="caret"></span><span
							style="font-size: 16px;"
							class="pull-right hidden-xs showopacity glyphicon glyphicon-user"></span></a>
						<ul class="dropdown-menu forAnimate" role="menu">
							<li><a href="#">Novo<span
									class="pull-right hidden-xs showopacity glyphicon glyphicon-ok"></span></a></li>
							<li><a href="#">Editar<span
									class="pull-right hidden-xs showopacity glyphicon glyphicon-pencil"></span></a></li>
							<li><a href="#">Excluir<span
									class="pull-right hidden-xs showopacity glyphicon glyphicon-trash"></span></a></li>
						</ul></li>
					<li class="dropdown"><a href="introAdm.jsp" class="dropdown-toggle"
						data-toggle="dropdown">Anuncios <span class="caret"></span><span
							style="font-size: 16px;"
							class="pull-right hidden-xs showopacity glyphicon glyphicon-th-list"></span></a>
						<ul class="dropdown-menu forAnimate" role="menu">
							<li><a href="formImovel.jsp">Novo<span
									class="pull-right hidden-xs showopacity glyphicon glyphicon-ok"></span></a></li>
							<li><a href="#">Editar<span
									class="pull-right hidden-xs showopacity glyphicon glyphicon-pencil"></span></a></li>
							<li><a href="#">Excluir<span
									class="pull-right hidden-xs showopacity glyphicon glyphicon-trash"></span></a></li>
						</ul></li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="col-xs-3 col-sm-3 col-md-3">
				<!--  menu -->
			</div>

			<div class="col-xs-9" id="palco"></div>
		</div>
	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<!-- Função abrir conteudo div -->
	<SCRIPT type="text/javascript">
		$(document).ready(function() {
			$("#menu a").click(function(e) {
				e.preventDefault();
				var href = $(this).attr('href');
				$("#palco").load(href + "#palco");
			});

		});
	</SCRIPT>
</body>
</html>