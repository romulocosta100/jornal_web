<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>CADASTRO DE JORNALISTA</h1>
		<form action="add_usuario" method="post">
		Nome :<input type="text" name="nome"><br>
		Login:<input type="text" name="login"><br>
		Senha:<input type="password" name="senha" ><br>
		Email:<input type="text" name="email"><br>
			 <input type="hidden" name="id_role" value="3">
		<input type="submit" name="loga"> <br>
		
		</form>



</body>
</html>