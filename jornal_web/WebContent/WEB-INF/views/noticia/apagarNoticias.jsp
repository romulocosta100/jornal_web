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
	
    <h1>Notícias</h1>
	<center>
		<table border="2">	
			<tr>
				<td>Título<td>
				<td>SubTitulo<td>
				<td>Data<td>
				<td>Apagar<td>
			</tr>
		
			<c:forEach var="noticia" items="${noticias}" >
				<tr>
					<td>${noticia.titulo}<td>
					<td>${noticia.subtitulo}o<td>
					<td>${noticia.data_noticia}<td>
					<td><a href="apagar_noticia?id_noticia=${noticia.id_noticia}">Excluir</a><td>
				</td>
	
			</c:forEach>
		
		</table>
	</center>

</body>
</html>