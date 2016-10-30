<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Imoveis</title>
</head>
<body>

<c:forEach items="${imovel}" var="c">
<div class="row">
  <div class="col-sm-6 col-md-4">
    <div class="thumbnail"><p>${c.titulo}</p>
      <img src="..." alt="..."><p>${c.img}</p>
      <div class="caption">
        <p>${c.descricao}</p>
        <p>${c.valor}</p>
        <p><a href="#" class="btn btn-primary" role="button">Comprar</a> <a href="#" class="btn btn-default" role="button">Descrição</a></p>
      </div>
    </div>
  </div>
</div>
</c:forEach>
			
</body>
</html>