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
	<HR WIDTH=90%>
	<h1>
	
		Faça sua oferta de compra para : ${classificado.titulo}<br>
		Preço inicial : ${classificado.preco}<br>
		<c:if test="${classificado.melhor_oferta==0}">
			Melhor oferta : sem lance ate agora<br>
		</c:if>
		<c:if test="${classificado.melhor_oferta!=0}">
			Melhor oferta : ${classificado.melhor_oferta}<br>
		</c:if>
		
		
		
		
		
		<form action="efetuar_oferta" method="post">
			<table>
				<tr>
					<td>Sua oferta </td><td> <input type="text" name="oferta"> </td> <td> <button type="submit" name="id_classificado" value="${classificado.id_classificado}" >Ok</button> </td>		
				</tr>	
			</table>
	
		</form>
		
	</h1>
	<HR WIDTH=90%>	
	
	

</body>
</html>