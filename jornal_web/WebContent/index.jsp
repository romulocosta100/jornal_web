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
	
	<c:import url="/topo"></c:import>	
	<c:import url="/banner"></c:import>
	
	
	<c:if test="${usuario!=null }">
		<br>
		
		<center>
		<div class="container" >
			<div class="alert alert-info" role="alert">
				<h1>Bem vindo,${usuario.nome}</h1>
			</div>
		</div>	
		</center>
	</c:if>

	<br>
	
	



</body>
</html>