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



	<center>
	<!-- Large modal -->
	<button type="button" class="btn btn-primary" data-toggle="modal"
		data-target=".bs-example-modal-lg">Info</button>
	</center>

	<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog"
		aria-labelledby="myLargeModalLabel">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="panel panel-success">
					<div class="panel-footer">Seção : ${noticia.secao.titulo }</div>
					<div class="panel-footer">Última alteração em :
						${noticia.data_noticia }</div>
					<div class="panel-footer">
						<img src="/img_jornalista/${noticia.autor.caminho_imagem}"
							alt="Jornalista" class="img-rounded" width="64" height="64">
						${noticia.autor.nome}
					</div>

					<c:forEach var="role" items="${usuario.roles}">

						<c:if test="${ role.papel=='jornalista'}">
							<c:if test="${usuario.id_usuario==noticia.autor.id_usuario}">

								<div class="panel-footer">
									<a class="btn btn-danger"
										href="apagar_noticia?id_noticia=${noticia.id_noticia}"
										role="button">Apagar</a>

								</div>

							</c:if>
						</c:if>

						<c:if test="${role.papel=='editor'}">
							<div class="panel-footer">

								<a class="btn btn-danger"
									href="apagar_noticia?id_noticia=${noticia.id_noticia}"
									role="button">Apagar</a>
							</div>
						</c:if>

					</c:forEach>
				</div>

			</div>
		</div>
	</div>
	
	<HR WIDTH=40%>
	<!--Mostrar Noticia-->
	<center>	
		<h1> ${noticia.titulo }</h1><br>
		<h2> ${noticia.subtitulo }</h2><br>
		<c:if test="${noticia.caminho_imagem != nul}">
			<img src="/img_noticia/${noticia.caminho_imagem}" alt="..." class="img-thumbnail">	
		</c:if>
		<h2> ${noticia.texto}</h2><br>
	<HR WIDTH=10%>
	<br>
	
		
	<c:forEach var="role" items="${usuario.roles}">
			
		<c:if test="${role.papel=='leitor'}">
			
		
			<h3>Insira um comentário</h3>
					
			<!-- 
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
			
			
			 -->
				<div class="container">
					<form action="comentar" method="post">

						<div class="form-group">
							<label for="exampleInputEmail1">${usuario.nome} :</label>
							<textarea class="form-control" name="texto" rows="5"></textarea>
						</div>
						<input type="hidden" name="id_noticia" value="${noticia.id_noticia}" >
						<button type="submit" class="btn btn-default">Comentar</button>

					</form>
					<br>
				</div>



			</c:if>
					
	</c:forEach>
	</center>		
	
	<!-- mostrar comentario -->
	<c:forEach var="comentario" items="${comentarios}">

		<div class="container">
			<div class="panel panel-default">
				<div class="panel-body">${comentario.autor.nome}</div>
				<div class="panel-footer">${comentario.texto }</div>
			</div>
		</div>

	</c:forEach>
	


</body>
</html>
