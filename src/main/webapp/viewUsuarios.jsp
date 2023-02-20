<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Visualizar Usuários</title>
</head>
<body>

	<%@ page import="com.javaWebCrud.dao.UsuarioDao, com.javaWebCrud.bean.*, java.util.*"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	
	<h1>Lista de Usuários</h1>
	

	<%
	List<Usuario> list = UsuarioDao.getAllUsuarios();
	request.setAttribute("list", list);
	%>
	
	
	<table>
	
	<tr>
		<th>ID</th>
		<th>Nome</th>
		<th>Password</th>
		<th>Email</th>
		<th>Sexo</th>
		<th>País</th>
		<th></th>
		<th></th>
	</tr>
	
	<c:forEach items="${list}" var="usuario">
		<tr>
			<td>${usuario.getId()}</td>
			<td>${usuario.getNome()}</td>
			<td>${usuario.getPassword()}</td>
			<td>${usuario.getEmail()}</td>
			<td>${usuario.getSexo()}</td>
			<td>${usuario.getPais()}</td>
			<td><a href="edit.jsp?id=${usuario.getId()}"><button>Editar</button></a></td>
			<td><a href=""><button>Excluir</button></a></td>
		</tr>
	</c:forEach>
	</table>
	<br>
	<a href="addUsuario.jsp"><button>Adicionar novo usuário</button></a>



</body>
</html>