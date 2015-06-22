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
	<h1>Cadastrar Classificado</h1>
	<form action="add_classificado" method="post">
		Titulo   :<input type="text" name="titulo"><br> 
		Texto    :<input type="text" name="texto"><br>
		Preço    :<input type="text" name="preco"><br>
		Telefone :<input type="text" name="telefone"><br>
				  <input  type="hidden" name="id_usuario" value="${usuario.id_usuario}"><br>
		<input type="submit"><br>
	</form>
 -->	
	
	 	<center><h1>Cadastro de Classificado</h1></center>
 	
 	<div class="container">
	<form action="add_classificado" method="post" >
		<div class="form-group">
			<label for="exampleInputEmail1">Titulo</label> 
			<input type="text" name="titulo" class="form-control" placeholder="Titulo">
		</div>
		
		<div class="form-group">
			<label for="exampleInputEmail1">Texto</label> 
			<input type="text" name="texto" class="form-control" placeholder="Texto">
		</div>
		
		<div class="form-group">
			<label for="exampleInputEmail1">Preço</label> 
			<input type="number" step="any" name="preco" class="form-control" placeholder="Preço">
		</div>
		
		<div class="form-group">
			<label for="exampleInputEmail1">Preço</label> 
			<input type="text" name="telefone" class="form-control" placeholder="Telefone">
		</div>
	
		

		<input  type="hidden" name="id_usuario" value="${usuario.id_usuario}">
		<button type="submit" class="btn btn-default">Cadastrar</button>
	</form>
	</div>
	

</body>
</html>