/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Producto;
import Modelo.ProductoDAO;
import Modelo.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author javier
 */
public class Controlador extends HttpServlet {

    Producto pr = new Producto();
    ProductoDAO pdao = new ProductoDAO();
  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            String menu = request.getParameter("menu");
            String accion = request.getParameter("accion");
            if (menu.equals("Principal")) {
                request.getRequestDispatcher("Principal.jsp").forward(request, response);
            }
            if(menu.equals("Productos")){
                switch (accion) {
                case "Listar":
                    List lista = pdao.listar();
                    request.setAttribute("producto", lista);
                    break;
                default:
                    throw new   AssertionError();   
                }
                        
                request.getRequestDispatcher("Productos.jsp").forward(request, response);
            }
            if(menu.equals("Pedido")){
                switch (accion) {
                case "BuscarProducto":
                   String id = request.getParameter("codigoProducto");
                   pr.setId(Integer.parseInt(id));
                   pr = pdao.buscar(id);
                   request.setAttribute("pr", pr);
                    break;
                default:
                    throw new   AssertionError();   
                }
                request.getRequestDispatcher("Pedido.jsp").forward(request, response);
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
