<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="shortcut icon" href="imagens/favicon.ico" type="image/x-icon" />
<title>Noticia Agora</title>
</head>
<body>
	
	
	<c:if test="${usuario!=null }">
		<h1>Bem vindo,${usuario.nome} </h1>
	</c:if>
	<center>
		<h1>
		
			<a href="lita_secoes">Manchetes </a><br>
			<a href="classificados">Classificados </a><br>
			<a href="formularios_login">Login</a><br>
			
			
			
			
			
			<c:forEach var="role" items="${usuario.roles}">
			
				<c:if test="${ role.papel=='jornalista'}">
					<a href="formulario_noticia">Cadastrar Noticia </a><br>
					<a href="lista_noticia">Apagar Noticia </a><br>
				</c:if>	
				
				
				<c:if test="${role.papel=='editor'}">
					<a href="cadastrar_jornalista">Cadastrar Jornalista</a><br>
					<a href="formulario_classificado">Cadastrar Classificado</a><br>
					<a href="formulario_secao">Cadastrar Seção</a><br>
					<a href="lista_noticia">Apagar Noticia </a><br>
				</c:if>
					
			</c:forEach>
		</h1>
	
	
	
	</center>

</body>
</html>