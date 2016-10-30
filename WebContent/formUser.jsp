<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Inserir Usuario</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
</head>
<body>
	<div class="container-fluid">
		<form method="post" id="formUser">
			<input type="hidden" name="id" value="${usuario.id}" />
			<div class="form-group">
				<label for="nome">Nome:</label> <input type="text"
					class="form-control" required name="nome"
					value="${usuario.nome}" id="nome">
			</div>
			<div class="form-group">
				<label for="email">Email</label> <input type="email"
					class="form-control" required name="email"
					value="${usuario.email}" id="email">
			</div>
			<div class="form-group">
				<label for="senha">Senha</label> <input type="text"
					class="form-control" required name="senha"
					value="${usuario.senha}" id="senha">
			</div>

			<div class="form-group">
				<input type="submit" value="Salvar" id="btnAdicionar"
					class="btn btn-primary" />
			</div>
			<div id="mensagem"></div>

		</form>


	</div>
	<script src="https://code.jquery.com/jquery-3.1.0.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script>
		$(document).ready(
				function() {
					$("#formUser").submit(
							function(event) {
								event.preventDefault();
								$.post(
										"SalvarUser",
										$(this).serialize(),
										function(data, status) {
											$("#mensagem").fadeIn("fast").html(
													data);
											setTimeout(10000);
											$("#mensagem").fadeOut(5000).html(
													data);
										}).fail(function(xhr, status, error) {
									$("#mensagem").html(xhr.responseText);
								})

							})
				})
	</script>
</body>
</html>