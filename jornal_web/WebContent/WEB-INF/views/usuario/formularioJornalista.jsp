<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<h1>CADASTRO DE JORNALISTA</h1>
		<form action="add_jornalista" method="POST" enctype="multipart/form-data">
		Nome :<input type="text" name="nome"><br>
		Login:<input type="text" name="login"><br>
		Senha:<input type="password" name="senha" ><br>
		Email:<input type="text" name="email"><br>
			 <input type="hidden" name="id_role" value="3">
			<input type="file" name="file" ><br>	 
		    <input type="submit" name="loga"> <br>
		
		</form>

 -->
 		<center><h1>Cadastro de Jornalista</h1></center>
 	<div class="container">
		<form action="add_jornalista" method="POST" enctype="multipart/form-data" >
		<div class="form-group">
			<label for="exampleInputEmail1">Nome</label> 
			<input type="text" name="nome" class="form-control" placeholder="Nome">
		</div>
		
		<div class="form-group">
			<label for="exampleInputEmail1">Login</label> 
			<input type="text" name="login" class="form-control" placeholder="Login">
		</div>
		
		<div class="form-group">
			<label for="exampleInputEmail1">Senha</label> 
			<input type="password" name="senha" class="form-control" placeholder="Senha">
		</div>
		
		<div class="form-group">
			<label for="exampleInputEmail1">Email</label> 
			<input type="email"  name="email" class="form-control" id="inputEmail3" placeholder="Email">
		</div>
	
			
		<div class="form-group">
			<label for="exampleInputEmail1">Imagem</label> 
			<input type="file" name="file">
			
		</div>

		<input type="hidden" name="id_role" value="3">
		<button type="submit" class="btn btn-default">Cadastrar</button>
	</form>
	</div>
	
	




</body>
</html>