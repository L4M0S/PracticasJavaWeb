/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package datos;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author lamos
 */
@WebServlet(name = "datos", urlPatterns = {"/datos"})
public class datos extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet datos</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet datos at " + request.getContextPath() + "</h1>");
            out.println("<br>");
            
            out.println("<form action='imprimir.jsp' method='post'>");
            out.println("cuadrado:");
            out.println("<input type='radio' name='figura' value=1>");
            out.println("<br/>");
            out.println("rectangulo:");
            out.println("<input type='radio' name='figura' value=2>");
            out.println("<br/>");
            out.println("triangulo:");
            out.println("<input type='radio' name='figura' value=3>");
            out.println("<br/><br/>");
            out.println("area:");
            out.println("<input type='checkbox' name='area' value='area'>");
            out.println("<br/>");
            out.println("perimetro:");
            out.println("<input type='checkbox' name='perimetro' value='perimetro'>");
            out.println("<br/><br/><br/>");
            out.println("base:");
            out.println("<input type='number' name='base'>");
            out.println("<br/>");
            out.println("altura:");
            out.println("<input type='number' name='altura'>");
            out.println("<br/>");

            out.println("<p><input type='submit' value='Calcular'></p>");
            out.println("</form>");
            
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
