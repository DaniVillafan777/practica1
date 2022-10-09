<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Registro de Usuarios</h1>
        <form action="RegisServlet" method="POST">
        <table border="0">
            <thead>
                <tr>
                    <td><label>Nombre: </label></td>
                    <td><input type="text" name="nombre"/></td>
                </tr>
                <tr>
                    <td><label>Apellidos: </label></td>
                    <td><input type="text" name="apellidos"/></td>
                </tr>
                <tr>
                    <td><label>Correo electronico: </label></td>
                    <td><input type="text" name="correo"/></td>
                </tr>
                <tr>
                    <td><label>Contraseña: </label></td>
                    <td><input type="text" name="password"/></td>
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
