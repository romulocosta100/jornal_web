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
	<h4>
	${noticia.secao.titulo }<br>
	${noticia.data_noticia }<br>
	Autor :${noticia.autor.nome }<br>
	</h4>
	 
	
	
	
	<c:forEach var="role" items="${usuario.roles}">
			
		<c:if test="${ role.papel=='jornalista'}">
			<c:if test="${usuario.id_usuario==noticia.autor.id_usuario}">
				<a href="apagar_noticia?id_noticia=${noticia.id_noticia}">Apagar Noticia </a><br>
			</c:if>
		</c:if>	
				
		<c:if test="${role.papel=='editor'}">
			<a href="apagar_noticia?id_noticia=${noticia.id_noticia }">Apagar Noticia </a><br>
		</c:if>
					
	</c:forEach>
	
	
	<c:if test="${noticia.caminho_imagem != nul}">
		<center><img alt="imagem" src="${noticia.caminho_imagem}"></center>
	</c:if>
	
	
	<center>
		<HR WIDTH=10%>
		<h1> ${noticia.titulo }</h1><br>	
		<h2> ${noticia.subtitulo }</h2><br>
		<h2> ${noticia.texto}</h2><br>
	<HR WIDTH=10%>
		<br>
		
	<c:forEach var="role" items="${usuario.roles}">
			
		<c:if test="${role.papel=='leitor'}">
			
		
			<h3>Insira um comentário</h3>
					
			
			<fieldset>
				<legend>Comentário</legend>
				<form action="comentar">
					<table>
						<tr>
						<td><h1>   ${usuario.nome}  </h1></td> <td>  <textarea rows="5" cols="70" name=texto></textarea> </td>
						</tr>
						<tr>
							<td><input type="hidden" name="id_noticia" value="${noticia.id_noticia}" > </td> <td><input type="submit"  name="ok" > </td>	
						</tr>
					</table>		
				
				</form> 
			</fieldset>
			
	
		</c:if>
					
	</c:forEach>
	
	
	<c:forEach var="comentario" items="${comentarios }">
		<table>
			<tr>
				<td><h1>   ${comentario.autor.nome}  </h1></td> <td> ${comentario.texto } </td>
			</tr>
	
		</table>
		<HR WIDTH=10%>	
	
	</c:forEach>
	




	
	</center>		

</body>
</html>
