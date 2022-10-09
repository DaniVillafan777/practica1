<%@page import="com.emergentes.Libros"%>
<%
    Libros lib = (Libros) request.getAttribute("lib");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Usted registro un libro con los siguientes datos</h1>
        <p>Titulo: <%= lib.getTitulo() %></p>
        <p>Autor: <%= lib.getAutor() %></p>
        <p>Resumen: <%= lib.getResumen() %></p>
        <p>Medio: <%= lib.getMedio() %></p>   
        <br>
        <a href="index.jsp">Volver</a>
    </body>
</html>
