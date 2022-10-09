<%@page import="com.emergentes.Contactar"%>
<% 
    Contactar cont = (Contactar) request.getAttribute("cont");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Se ha enviado su consulta con los siguientes datos:</h1>
        <p>Nombre: <%= cont.getNombre() %> </p>
        <p>Correo: <%= cont.getCorreo() %> </p>
        <p>Mensaje: <%= cont.getMensaje() %> </p>
        <% if (cont.getCopia() == null) 
        { 
        %>
            <p>No se envió una copia a su correo<p/>
        <%
            }
        else if (cont.getCopia() != null){
        %>
        <p>Se envió una copia de seguridad a su correo</p> 
        <% 
            }
        %>
        <br>
        <a href="index.jsp">Volver</a>
    </body>
</html>
