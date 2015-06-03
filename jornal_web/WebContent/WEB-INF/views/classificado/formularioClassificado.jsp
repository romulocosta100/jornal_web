<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h1>Cadastrar Classificado</h1>
	<form action="add_classificado" method="post">
		Titulo   :<input type="text" name="titulo"><br> 
		Texto    :<input type="text" name="texto"><br>
		Preço    :<input type="text" name="preco"><br>
		Telefone :<input type="text" name="telefone"><br>
				  <input  type="hidden" name="id_usuario" value="${usuario.id_usuario}"><br>
		<input type="submit"><br>
	</form>
	

</body>
</html>