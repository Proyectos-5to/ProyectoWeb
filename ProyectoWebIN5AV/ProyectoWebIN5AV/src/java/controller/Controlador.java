
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Persona;
import modelDAO.PersonaDAO;

/**
 *
 * @author LENOVO
 */
public class Controlador extends HttpServlet {

    String listar = "view/listar.jsp";
    String add = "view/add.jsp";
    String edit = "view/editar.jsp";
    Persona nuevaPersona = new Persona();
    PersonaDAO personaDAO = new PersonaDAO();
    int codigoPersona;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Controlador</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Controlador at " + request.getContextPath() + "</h1>");
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
        
        String acceso = "";
        String action = request.getParameter("accion");
        if (action.equalsIgnoreCase("listar")) {
            acceso = listar;
            
        }else if(action.equalsIgnoreCase("add")){
            acceso = add;
        }else if(action.equalsIgnoreCase("Agregar")){
            
            String DPI = request.getParameter("txtDPI");
            String nombre = request.getParameter("txtNombre");
            nuevaPersona.setDPI(DPI);
            nuevaPersona.setNombrePersona(nombre);
            personaDAO.add(nuevaPersona);
            acceso = listar;
        }else if(action.equalsIgnoreCase("editar")){
            request.setAttribute("codPer", request.getParameter("codigoPersona"));
            acceso = edit;
        }else if(action.equalsIgnoreCase("Actualizar")){
            codigoPersona = Integer.parseInt(request.getParameter("txtCodigoPersona"));
            String DPI = request.getParameter("txtDPI");
            String nombres = request.getParameter("txtNombre");
            nuevaPersona.setCodigoPersona(codigoPersona);
            nuevaPersona.setDPI(DPI);
            nuevaPersona.setNombrePersona(nombres);
            personaDAO.edit(nuevaPersona);
            acceso = listar;
        }else if( action.equalsIgnoreCase("eliminar")){
            codigoPersona = Integer.parseInt(request.getParameter("codigoPersona"));
            nuevaPersona.setCodigoPersona(codigoPersona);
            personaDAO.eliminar(codigoPersona);
            acceso = listar;
            
        }
        
       
        RequestDispatcher vista = request.getRequestDispatcher(acceso);
        vista.forward(request, response);   
    
        
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
