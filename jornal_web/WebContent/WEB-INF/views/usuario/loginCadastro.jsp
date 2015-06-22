<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


</head>
<body>

	<c:import url="/topo"></c:import>	

<!-- 
	

 
	<c:if test="${usuario!=null }">
		<h1>Bem vindo,${usuario.nome}</h1>
	</c:if>

	<p align="left">
	<h1>LOGIN</h1>
	<form action="efetua_login" method="post">
		Login :<input type="text" name="login"><br> Senha :<input
			type="password" name="senha"><br> <input type="submit"
			name="loga"> <br>

	</form>
	</p>

	<p align="right">
	<h1>CADASTRO</h1>
	<form action="add_usuario" method="post">
		Nome :<input type="text" name="nome"><br> Login:<input
			type="text" name="login"><br> Senha:<input
			type="password" name="senha"><br> Email:<input
			type="text" name="email"><br> <input type="hidden"
			name="id_role" value="1"> <input type="submit" name="loga">
		<br>

	</form>
	</p>

	<a href="index.jsp">INDEX</a>
 -->


<center>
	<c:if test="${usuario!=null}">
		<h1>
			<div class="alert alert-success" role="alert">Bem vindo(a) ${usuario.nome}</div>
		</h1>
		
	</c:if>

	
	<h1>LOGIN</h1>

	<form class="form-inline" action="efetua_login" method="post">
		<div class="form-group">
			<label class="sr-only" for="exampleInputEmail3">Login</label>
			<input type="text" class="form-control" placeholder="Login" name="login">
		</div>
		<div class="form-group">
			<label class="sr-only" for="exampleInputPassword3">Senha</label> 
			<input type="password" class="form-control" name="senha" id="exampleInputPassword3"placeholder="Senha">
		</div>
		<button type="submit" class="btn btn-default">Entrar</button>
	</form>

	<br>
	<br>
		<h1>Cadastra Leitor</h1>

		<form class="form-inline" action="add_usuario" method="post">
			<div class="form-group">
				<label for="exampleInputName2">Nome</label> 
				<input type="text" name="nome" class="form-control" id="exampleInputName2" placeholder="Nome">
			</div><br>
			
			<div class="form-group">
				<label for="exampleInputName2">Login</label> 
				<input type="texto" name="Login" class="form-control" id="exampleInputName2" placeholder="Login">
			</div><br>
			
			<div class="form-group">
				<label for="exampleInputName2">Senha</label> 
				<input type="password" name="senha" class="form-control" id="exampleInputName2" placeholder="Senha">
			</div><br>
			
			 <div class="form-group">
    			<label for="exampleInputEmail2">Email</label>
    			<input type="email" name="email"  class="form-control" id="exampleInputEmail2" placeholder="Email">
  			</div><br>
			
			 <input type="hidden" name="id_role" value="1">
			
			<button type="submit" class="btn btn-default">Cadastrar</button>
		</form>

	</center>


	


</body>
</html>