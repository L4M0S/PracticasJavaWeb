package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.servlet.RequestDispatcher;
import java.sql.SQLException;
import java.util.ArrayList;

import dao.dao;
import java.util.Iterator;
import modelo.producto;

@WebServlet(name = "controlador", urlPatterns = {"/controlador"})
public class controlador extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private static String insert_or_edit = "/producto.jsp";
    private static String list_Articulos = "/tabla.jsp";
    private static String list_Comprar = "/comprar.jsp";
    private dao productodao;

    public controlador() {
        super();
        productodao = new dao();
    }
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    protected void doGet(HttpServletRequest request, 
    HttpServletResponse response) 
    throws ServletException, IOException {
        String forward = "";
        String action = request.getParameter("action");
        if (action.equalsIgnoreCase("delete")) {
			// the other page is sending the person id, so we can get here and
            // call the remove method
            String codigo = request.getParameter("codigo");
            // we remove the person from the database
            productodao.removeArticulo(codigo);
			// set the forward string to list and put all persons in request
            // attribute so we can use them inside the other page
            forward = list_Articulos;
            try {
                request.setAttribute("articulos", productodao.getArticulos());
            } catch (SQLException e) {
                e.printStackTrace();
            }
            // if the user is trying to edit a person
        } 
        else if (action.equalsIgnoreCase("comprar")) {
			// the other page is sending the person id, so we can get here and
            // call the remove method
            String nombre = request.getParameter("nombre");
            String precio = request.getParameter("precio");
            // we remove the person from the database
            productodao.addCompra(nombre,precio);
			// set the forward string to list and put all persons in request
            // attribute so we can use them inside the other page
            forward = list_Articulos;
            try {
                request.setAttribute("articulos", productodao.getArticulos());
            } catch (SQLException e) {
                e.printStackTrace();
            }
            // if the user is trying to edit a person
        }
        

        else if (action.equalsIgnoreCase("edit")) {

            forward = insert_or_edit;
            String codigo = request.getParameter("codigo");
            System.out.println(codigo);
            try {
                producto articulo = productodao.getArticulo(codigo);
                request.setAttribute("articulo", articulo);
            } catch (SQLException e) {
                e.printStackTrace();
            }

        } else if (action.equalsIgnoreCase("listArticulos")) {
            forward = list_Articulos;
            try {
                request.setAttribute("articulos", productodao.getArticulos());
            } catch (SQLException e) {
                e.printStackTrace();
            }
        } else {
            forward = insert_or_edit;
        }
        RequestDispatcher view = request.getRequestDispatcher(forward);
        view.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        producto articulo = new producto();
        articulo.setCodigo(request.getParameter("codigo"));
        articulo.setNombre(request.getParameter("nombre"));
        articulo.setPrecio(request.getParameter("precio"));
        String codigo = request.getParameter("codigo");
         System.out.println("ola");
        System.out.println(codigo);
		// what i'm trying to mean here is: if the personid coming from the
        // request is null
        // then, the user is trying to add someone, otherwise, he's trying to
        // update someone
        /*
        ArrayList<producto> existentes = new ArrayList<producto>();
        Iterator<producto> it = existentes.iterator();
        
        ArrayList<String> codigos = new ArrayList<String>();
        Iterator<String> itc = codigos.iterator();
        
        
        try {
                existentes=productodao.getArticulos();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        while(it.hasNext())
        {
            codigos.add(it.next().getCodigo());
        }
        */
        if (codigo == null || codigo.isEmpty()) {
        //if (!codigos.contains(codigo)){
            productodao.addArticulo(articulo);
        } else {
            articulo.setCodigo(codigo);
            productodao.updateArticulo(articulo);
        }
        //productodao.addArticulo(articulo);
        response.sendRedirect(request.getContextPath() + "/index.jsp");
    }
    ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    /*
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet controlador</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet controlador at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }*/

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
 

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
   

}
