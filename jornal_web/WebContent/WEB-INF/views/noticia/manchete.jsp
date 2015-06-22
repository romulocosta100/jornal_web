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
	<center>
	
		<h1>Manchetes</h1>
		
		<c:forEach var="noticia" items="${noticias}">
			<h2> <a href="ler_noticia?id_noticia=${noticia.id_noticia}">${noticia.titulo}</a> </h2><br>
			<h3>${noticia.subtitulo}</h3><br>
			<HR WIDTH=85%>
		</c:forEach>
	
	</center>
	
 -->



	<center>
		<h1>Manchetes</h1>
		<c:forEach var="noticia" items="${noticias}">
		<div class="container">
			<div class="jumbotron">
				<h1>${noticia.titulo}</h1>
				<p>${noticia.subtitulo}</p>
				<p>
					<a class="btn btn-primary btn-lg" href="ler_noticia?id_noticia=${noticia.id_noticia}" role="button">Ler Completo</a>
				</p>
			</div>
			
		</c:forEach>

	</center>
 

</body>
</html>