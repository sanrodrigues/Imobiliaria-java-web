<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Usuarios</title>
</head>
<body>
	<h1>Lista de usuario <a href="NovoUser">Novo</a></h1>
	
	<table>
		<tr>
			<th>Id</th>
			<th>Nome</th>
			<th>E-mail</th>
			<th>senha</th>
		</tr>
			<c:forEach items="${usuarios}" var="c">
				<tr>
					<td>${c.id}</td>
					<td>${c.nome}</td>
					<td>${c.email}</td>
					<td>"${c.senha}" 
				   </td>
				   <td>
				   		<a href="EditarUsuario?id=${c.id}">Editar</a>
				   </td>
				</tr>
			</c:forEach>
	
	</table>


</body>
</html>