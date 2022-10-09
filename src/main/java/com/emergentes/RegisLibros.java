package com.emergentes;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "RegisLibros", urlPatterns = {"/RegisLibros"})
public class RegisLibros extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String titulo = request.getParameter("titulo");
        String autor = request.getParameter("autor");
        String resumen = request.getParameter("resumen");
        String medio = request.getParameter("medio");
        
        //Creamos un objeto para encapsular la informacion
        Libros lib = new Libros();
        
        //Llenamos datos en el objeto lib
        lib.setTitulo(titulo);
        lib.setAutor(autor);
        lib.setResumen(resumen);
        lib.setMedio(medio);
        
        //Colocamos el objeto lib como atributo de request
        request.setAttribute("lib", lib);
        
        //Enviamos el objeto reuqest a la salida libregis.jsp
        request.getRequestDispatcher("libregis.jsp").forward(request, response);
        
    }
}

