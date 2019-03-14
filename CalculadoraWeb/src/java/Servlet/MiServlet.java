package Servlet;

import Controladores.Operaciones;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author LuisGomez
 */
public class MiServlet extends HttpServlet {

  

    Operaciones op = new Operaciones();
    public static String salida="";
    
    
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        try (PrintWriter out = response.getWriter()) {
            float num1 = new Float(request.getParameter("numero1"));
            float num2 = new Float(request.getParameter("numero2"));
            String operacion = request.getParameter("operacion");
            salida = op.opcion(operacion, num1, num2);
            response.sendRedirect("prueba.jsp");
        } catch (Exception e) {
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
    }

}
