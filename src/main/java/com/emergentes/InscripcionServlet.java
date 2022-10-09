
package com.emergentes;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "InscripcionServlet", urlPatterns = {"/InscripcionServlet"})
public class InscripcionServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String fecha = request.getParameter("fecha");
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String turno = request.getParameter("turno");
        String cursos[] = request.getParameterValues("cursos");
         
        //Crear un obejto para encapsular la información
        
        Inscripcion ins = new Inscripcion();
        
        //Llenar datos en el obejto ins
        ins.setFecha(fecha);
        ins.setNombre(nombre);
        ins.setApellido(apellido);
        ins.setTurno(turno);
        ins.setCursos(cursos);
        
        //colocamos el objetp ins como atributo de request
        request.setAttribute("ins", ins);
        
        //Enviar el objeto request a la salida inscrito.jsp
        request.getRequestDispatcher("inscrito.jsp").forward(request, response);
        
        
    }
}

