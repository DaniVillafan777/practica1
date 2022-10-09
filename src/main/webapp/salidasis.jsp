<%@page import="com.emergentes.Pregunta"%>
<%
  Pregunta preg = (Pregunta) request.getAttribute("preg");

%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Gracias por llenar la encuesta</h1>
        <p>Los datos recibidos son:</p>
        <p>Nombre: <%= preg.getNombre() %> y los Sistemas operativos de su prefencia son:</p>
        <ul>
            <%
                if (preg.getSisope() != null){
                    for (String item : preg.getSisope()){
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

