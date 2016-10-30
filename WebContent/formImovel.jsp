<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Inserir imovel</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
</head>
<body>
	<div class="container-fluid">
		<form method="post" id="formImovel">
			<input type="hidden" name="id" value="${imovel.id}" />
			<div class="form-group">
				<label for="codigo">codigo:</label> <input type="text"
					class="form-control" required name="codigo"
					value="${imovel.codigo}" id="codigo">
			</div>
			<div class="form-group">
				<label for="titulo">Titulo</label> <input type="text"
					class="form-control" required name="titulo"
					value="${imovel.titulo}" id="titulo">
			</div>
			<div class="form-group">
				<label for="descricao">Descrição</label> <input type="text"
					class="form-control" required name="descricao"
					value="${imovel.descricao}" id="descricao">
			</div>
			<div class="form-group">
				<label for="descricao">Valor</label> <input type="number"
					class="form-control" required name="valor" value="${imovel.valor}"
					id="valor" step="0.01">
			</div>
			
			
			<div class="form-group">
				<label for="descricao">Selecionar foto:</label><input type="file" name="file" size="60" value="${imovel.img}">
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
					$("#formImovel").submit(
							function(event) {
								event.preventDefault();
								$.post(
										"SalvarImovel",
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