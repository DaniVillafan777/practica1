<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Encuesta de Sistemas Operativos</h1>
        <form action="SisopeServlet" method="POST">
        <label>Nombre: </label>
        <input type="text" name="nombre" value="" >
        <br>       
        <input type="checkbox" name="sisope" value="Windows"/>
        <label>Windows</label>
        <br>        
        <input type="checkbox" name="sisope" value="Linux"/>
        <label>Linux</label>
        <br>        
        <input type="checkbox" name="sisope" value="IOs"/>
        <label>IOs</label>
        <br>        
        <input type="checkbox" name="sisope" value="Android"/>
        <label>Android</label>
        <br>
        <input type="submit" value="Enviar" />        
        </form>
    </body>
</html>
