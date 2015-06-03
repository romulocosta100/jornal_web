<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<c:if test="${usuario!=null }">
		<h1>Bem vindo,${usuario.nome} </h1>
	</c:if>
	
	<p align="left">
		<h1>LOGIN </h1>
		<form  action="efetua_login" method="post">
		Login :<input type="text" name="login"><br>
		Senha :<input type="password" name="senha"><br>
		<input type="submit" name="loga"> <br>
		
		</form>
	</p>
	
	<p align="right" >
		<h1>CADASTRO</h1>
		<form action="add_usuario" method="post">
		Nome :<input type="text" name="nome"><br>
		Login:<input type="text" name="login"><br>
		Senha:<input type="password" name="senha" ><br>
		Email:<input type="text" name="email"><br>
			 <input type="hidden" name="id_role" value="1">
		<input type="submit" name="loga"> <br>
		
		</form>
	</p>
	
	<a href="index.jsp">INDEX</a>


</body>
</html>