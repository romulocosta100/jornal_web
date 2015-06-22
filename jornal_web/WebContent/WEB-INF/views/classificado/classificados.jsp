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
	<h2>
	<center>
	Classificado<br>
	<c:forEach var="classificado" items="${classificados}">
		<table border=1 cellspacing=0 cellpadding=2 bordercolor="666633">
			<tr>
				<td>Titulo</td>
				<td>${classificado.titulo }</td>
			</tr>
			<tr>	
				<td>Descrição</td>
				<td>${classificado.texto }</td>
			</tr>	
			<tr>
				<td>preço</td>
				<td>${classificado.preco }</td>
			</tr>
			<tr>
				<td>telefone</td>
				<td>${classificado.telefone}</td>
			</tr>	
			<tr>
				<td>Melhor oferta</td>
				<td>${classificado.melhor_oferta }</td>
			</tr>
			<tr>	
				<td>Data da oferta</td>
				<c:if test="${classificado.data_oferta!=null }">
					<td>${classificado.data_oferta }</td>
				</c:if>
				<c:if test="${classificado.data_oferta==null }">
					<td>-</td>
				</c:if>
				
			</tr>
			<c:forEach var="role" items="${usuario.roles}">
			
				<c:if test="${ role.papel=='leitor'}">
					<tr>	
						<td>Oferta</td>
						<td>
							<form action="ofertar">
								<button type="submit" name="id_classificado" value="${classificado.id_classificado}" >Ofertar</button>
								
							</form>	
						</td>
					</tr>
			   </c:if>
					
			</c:forEach>
			
		<table><br>
	</c:forEach>
	</center>
	</h2>
 -->	
 	
<br>

	<center>
		<h2>
			<c:forEach var="classificado" items="${classificados}">

				<div class="container">
					<table class="table table-hover">
						<tr class="info">
							<td>Titulo</td>
							<td>${classificado.titulo }</td>
						</tr>
						<tr class="info">
							<td>Descrição</td>
							<td>${classificado.texto }</td>
						</tr>
						<tr class="info">
							<td>preço</td>
							<td>${classificado.preco }</td>
						</tr>
						<tr class="info">
							<td>telefone</td>
							<td>${classificado.telefone}</td>
						</tr>
						<tr class="info">
							<td>Melhor oferta</td>
							<td>${classificado.melhor_oferta }</td>
						</tr>
						<tr class="info">
							<td>Data da oferta</td>
							<c:if test="${classificado.data_oferta!=null }">
								<td>${classificado.data_oferta }</td>
							</c:if>
							<c:if test="${classificado.data_oferta==null }">
								<td>-</td>
							</c:if>

						</tr>
						<c:forEach var="role" items="${usuario.roles}">

							<c:if test="${ role.papel=='leitor'}">
								<tr class="info">
									<td>Oferta</td>
									<td>
										<form action="ofertar">
											<button class="btn btn-primary" type="submit"
												name="id_classificado"
												value="${classificado.id_classificado}">Ofertar</button>

										</form>
									</td>
								</tr>
							</c:if>
						</c:forEach>



					</table>
				</div>
				<br>


			</c:forEach>
		</h2>
	</center>










</body>
</html>