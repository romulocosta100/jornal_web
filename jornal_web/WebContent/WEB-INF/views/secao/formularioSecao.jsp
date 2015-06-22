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
	<form action="add_secao" method="post">
		Titulo:   <input type="text" name="titulo"><br>
		Descrição:<textarea name="descricao" rows="10" cols="40" ></textarea><br>
			      <input type="submit">
	</form>
	 -->
	
	<div class="container">
	<form action="add_secao" method="post">
		<div class="form-group">
			<label for="exampleInputEmail1">Titulo</label> 
			<input type="text" name="titulo" class="form-control" placeholder="Titulo">
		</div>
		
		<div class="form-group">
			<label for="exampleInputEmail1">Descrição</label>
			<textarea class="form-control" name="descricao" rows="5"></textarea>
		</div>
		
		<button type="submit" class="btn btn-default">Cadastrar</button>
		
	</form>
	</div>


</body>
</html>