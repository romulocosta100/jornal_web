<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<center>
		<HR WIDTH=10%>
		<h1> ${noticia.titulo }</h1><br>	
		<h2> ${noticia.subtitulo }</h2><br>
		<h2> ${noticia.texto}</h2><br>
		<HR WIDTH=10%>
	</center>
		

</body>
</html>