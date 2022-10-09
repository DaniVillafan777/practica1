package com.emergentes;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ContactServlet", urlPatterns = {"/ContactServlet"})
public class ContactServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            String nombre = request.getParameter("nombre");
            String correo = request.getParameter("correo");
            String mensaje = request.getParameter("mensaje");
            String copia = request.getParameter("copia");
            
            //Crear un objeto para encapsular la informacion
            Contactar cont = new Contactar();
            
            //llenamos datos en el objeto cont
            cont.setNombre(nombre);
            cont.setCorreo(correo);
            cont.setMensaje(mensaje);
            cont.setCopia(copia);
            
            //Colocamos el objeto cont como atributo de request
            request.setAttribute("cont", cont);
            
            //Enviar el obejto request a la salida contactar.jsp
            request.getRequestDispatcher("contactar.jsp").forward(request, response);
    }
}
