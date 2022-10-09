package com.emergentes;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "SisopeServlet", urlPatterns = {"/SisopeServlet"})
public class SisopeServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String nombre = request.getParameter("nombre");
        String sisope[] = request.getParameterValues("sisope");
        
        //Crear un objeto para encapsular la información
        
        Pregunta preg = new Pregunta();
        
        //lenar datos en el obejto preg
        preg.setNombre(nombre);
        preg.setSisope(sisope);
        
        //colocamos el objeto preg como atributo de request
        request.setAttribute("preg", preg);
        
        //enviar el obejto request a la salidasis.jsp
        request.getRequestDispatcher("salidasis.jsp").forward(request, response);
        
    }
}
