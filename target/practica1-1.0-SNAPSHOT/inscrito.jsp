<%@page import="com.emergentes.Inscripcion"%>
<%
    Inscripcion ins = (Inscripcion) request.getAttribute("ins");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Gracias por llenar el formulario de inscripcion a los seminarios</h1>
        <p>Los datos recibidos son:</p>
        <p>Nombre: <%= ins.getNombre() %> </p>
        <p>Apellido: <%= ins.getApellido() %> </p>
        <p>Fecha de inscipcion: <%= ins.getFecha() %> </p>
        <p>Turno: <%= ins.getTurno() %></p>
        <p>Los cursos de su eleccion son los siguientes:</p>
        <ul>
            <%
                if (ins.getCursos() != null){
                    for (String item : ins.getCursos()){
            %>
            <li> <%= item %> </li>
            <%
                    }
                }
            %>
        </ul>
        <br>
        <a href="index.jsp">Volver</a>
    </body>
</html>

