package com.emergentes;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "RegisServlet", urlPatterns = {"/RegisServlet"})
public class RegisServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellidos");
        String correo = request.getParameter("correo");
        String contraseña = request.getParameter("password");
        
        //Crear un objeto para encapsular la informacion
        Registro regis = new Registro();
        
        //Llenamos datos en el objeto regis
        regis.setNombre(nombre);
        regis.setApellido(apellido);
        regis.setCorreo(correo);
        regis.setContraseña(contraseña);
        
        //Colocamos el objeto regis como atributo de request
        request.setAttribute("regis", regis);
        
        //Enviar el obejto request a la salida registrado.jsp
        request.getRequestDispatcher("registrado.jsp").forward(request, response);
        
        
    }
}
