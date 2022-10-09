<%@page import="com.emergentes.Registro"%>
<%
    Registro regis = (Registro) request.getAttribute("regis");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Gracias por llenar el formulario de registro</h1>
        <p>Los datos recibidos son:</p>
        <p>Nombre: <%= regis.getNombre() %> </p>
        <p>Apellido: <%= regis.getApellido() %> </p>
        <p>Correo: <%= regis.getCorreo() %> </p>
        <p>Contraseña: <%= regis.getContraseña() %></p>
    </body>
</html>
