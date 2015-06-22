<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Seções</title>
</head>
<body>

	<c:import url="/topo"></c:import>
	
	<center>
		<h1>Seções</h1>
		<HR WIDTH=50%>
		<c:forEach var="secao" items="${secoes}">
				<c:if test="${not empty secao.noticias}">
				
				<h2> <a href="manchete?id_secao=${secao.id_secao}">${secao.titulo }</a> </h2>
					<HR WIDTH=50%>
					
				</c:if>
		</c:forEach>
	
	</center>


</body>
</html>