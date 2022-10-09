<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Contactenos</h1>
        <form action="ContactServlet" method="POST">
            <table border="0">
            <thead>
                <tr>
                    <td><label>Nombre: </label></td>
                    <td><input type="text" name="nombre"/></td>
                </tr>
                <tr>
                    <td><label>Correo electronico: </label></td>
                    <td><input type="text" name="correo"/></td>
                </tr>
                <tr>
                    <td><label>Mensaje: </label></td>
                    <td><textarea name="mensaje"></textarea></td>
                </tr>
                <tr>              
                    <td></td><td>
                        <input type="checkbox" name="copia"/>
                        <label>Enviar una copia a mi correo</label>
                    </td>
                </tr>
                <tr>
                    <td></td><td><input type="submit" value="Enviar"/></td>
                </tr>               
            </thead>
            <tbody>
            </tbody>
        </table>
        </form>
    </body>
</html>
