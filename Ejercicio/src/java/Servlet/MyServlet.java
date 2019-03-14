
package Servlet;

import Clase.Contacto;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MyServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            String id = request.getParameter("id");
            String nombre = request.getParameter("nombre");
            String apellidos = request.getParameter("apellidos");
            String preferido = request.getParameter("lenguaje");
            String [] hobbs = request.getParameterValues("hobb");
            
            Contacto con = new Contacto(new Integer(id), nombre, apellidos, preferido, hobbs);
            
            request.setAttribute("contacto", con);
            RequestDispatcher rd = request.getRequestDispatcher("/resultado.jsp");
            rd.forward(request, response);
            
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
 
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
