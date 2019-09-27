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
@WebServlet(name = "imprimir", urlPatterns = {"/imprimir"})
public class imprimir extends HttpServlet {

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
                     
            Double CantidadMotor=Double.parseDouble(request.getParameter("CantidadMotor"));
            Double CantidadAceite=Double.parseDouble(request.getParameter("CantidadAceite"));
            Double CantidadFiltro=Double.parseDouble(request.getParameter("CantidadFiltro"));
            bean articulo=new bean();
            //dao datos= new dao();
            articulo.CantidadMotor=CantidadMotor;
            articulo.CantidadAceite=CantidadAceite;
            articulo.CantidadFiltro=CantidadFiltro;
            dao datos=new dao();
            datos.setCantidadMotor(CantidadMotor);
            datos.setCantidadAceite(CantidadAceite);
            datos.setCantidadFiltro(CantidadFiltro);
            
            out.print("Datos guadado");
            out.print("<br>");
            out.print("<form action='imprimir.jsp' method='post'>");
            out.print("<p><input type='submit'></p>");
            out.print("</form>");
            /*
            datos.setCantidadMotor(CantidadMotor);
            datos.setCantidadAceite(CantidadAceite);
            datos.setCantidadFiltro(CantidadFiltro);
            
            out.print("Motores: "+CantidadMotor + " $"+ CantidadMotor*50);
            out.print("<br>");
            out.print("Aceites: "+CantidadAceite + " $"+ CantidadAceite*30);
            out.print("<br>");
            out.print("Filtros: "+CantidadFiltro + " $"+ CantidadFiltro*40);
            out.print("<br><br>");
            
            out.print("subtotal: "+ datos.getSubTotal());
            out.print("<br>");
            out.print("IVA: "+ datos.getSubTotal()*0.16);
            out.print("<br><br>");
            out.print("total: "+ datos.getTotal());
            out.print("<br>");
         */
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
