<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Registro de libros</h1>
        <form action="RegisLibros" method="POST">
            <table border="0">
            <thead>
                <tr>
                    <td><label>Titulo </label></td>
                    <td><input type="text" name="titulo"/></td>
                </tr>
                <tr>
                    <td><label>Autor </label></td>
                    <td><input type="text" name="autor"/></td>
                </tr>
                <tr>
                    <td><label>Resumen </label></td>
                    <td><textarea name="resumen"></textarea></td>
                </tr>
                <tr>
                    <td><label>Medio </label></td>
                    <td>
                        <input type="radio" name="medio" value="Fisico" />
                        <label>Fisico</label>
                        <br>
                        <input type="radio" name="medio" value="Magnetico" />
                        <label>Magnetico</label>
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
