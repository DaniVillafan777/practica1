<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Inscripcion en seminarios</h1>
        <form action="InscripcionServlet" method="POST">
        <table border="0">
            <thead>
                <tr>                   
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>
                        <label>Fecha</label>
                        <input type="date" name="fecha"/>
                        <br>
                        <label>Nombre</label>
                        <input type="text" name="nombre"/>
                        <br>
                        <label>Apellido</label>
                        <input type="text" name="apellido"/>
                        <br>
                        <label>Turno</label>
                        <select name="turno">
                            <option value="mañana">Mañana</option>
                            <option value="tarde">Tarde</option>
                            <option value="noche">Noche</option>
                        </select>
                        <br>
                        <input type="submit" value="Enviar"/>
                    </td>                        
                    <td>                       
                        <input type="checkbox" name="cursos" value="5g" />
                        <label>5G</label>
                        <br>                        
                        <input type="checkbox" name="cursos" value="Inteligencia Artificial" />
                        <label>Inteligencia Artificial</label>
                        <br>
                        <input type="checkbox" name="cursos" value="Machine Learning" />
                        <label>Machine learning</label>
                        <br>                       
                        <input type="checkbox" name="cursos" value="Robotica" />
                        <label>Robótica</label>
                    </td>
                </tr>
            </tbody>
        </table>
    </form>

    </body>
</html>
