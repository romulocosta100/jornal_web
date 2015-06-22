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
	<form method="POST" enctype="multipart/form-data" action="add_noticia">
	Titulo:<input type="text" name="titulo"><br>
	Subtitulo:<input type="text" name="subtitulo"><br>
	Notícia:<textarea rows="10" cols="10" name="texto"></textarea><br>
		
		<select name="id_secao"><br>
		 
			<c:forEach var="secao" items="${secoes}">
				<option value="${secao.id_secao}">${secao.titulo }</option>
			</c:forEach>
		 
		</select><br>
		<input type="file" name="file" ><br>
		<input type="submit"><br> 
	
	</form>
 -->	
		

	<div class="container">	
	<form method="POST" enctype="multipart/form-data" action="add_noticia">
		<div class="form-group">
			<label for="exampleInputEmail1">Titulo</label> 
			<input type="text" name="titulo" class="form-control" placeholder="Titulo">
		</div>
		
		<div class="form-group">
			<label for="exampleInputEmail1">SubTitulo</label> 
			<input type="text" name="subtitulo" class="form-control" placeholder="SubTitulo">
		</div>
		
		<div class="form-group">
			<label for="exampleInputEmail1">Texto</label>
			<textarea class="form-control" name="texto" rows="7"></textarea>
		</div>
		
		<div class="form-group" >
			<label for="exampleInputEmail1">Seção</label>
			<select name="id_secao" class="form-control">
				<c:forEach var="secao" items="${secoes}">
					<option value="${secao.id_secao}">${secao.titulo }</option>
				</c:forEach>
			</select>
		</div>
		
		<div class="form-group">
			<label for="exampleInputEmail1">Imagem</label> 
			<input type="file" name="file">
			
		</div>
		
		<button type="submit" class="btn btn-default">Cadastrar</button>
	</form>
	</div>


</body>
</html>