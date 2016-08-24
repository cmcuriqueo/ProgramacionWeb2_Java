/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.io.IOException;
import java.util.HashMap;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author universidad
 */
public class BienvenidoServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HashMap<String, Object> errores = new HashMap();
        
        String miNombre;
        Integer miEdad;
        String miLocalidad;
        
        miNombre = request.getParameter("nombre");
        try {
            miEdad = Integer.valueOf(request.getParameter("edad"));
        } catch (NumberFormatException e){
            errores.put("edad","La edad no es valida");
            miEdad = null;
        }
        miLocalidad = request.getParameter("localidad");
        
        // poner variable a disposicion de jsp
        //request.setAttribute("nombre", miNombre);
        if (miNombre == null || miNombre.length() == 0) {
            errores.put("nombre","El nombre no puede ser vacio");
        }        
        if(miLocalidad.equals("0")){
            errores.put("localidad","La localidad es requerida");
        }
        
        if (errores.isEmpty()) {
            request.setAttribute("nombre", miNombre);
            request.setAttribute("edad", miEdad);
            request.setAttribute("localidad", miLocalidad);
            request.getRequestDispatcher("datos_ok.jsp").forward(request, response);
        } else {
            request.setAttribute("errores", errores);
            request.getRequestDispatcher("form.jsp").forward(request, response);
        }
        //Redirije jsp
        //request.getRequestDispatcher("hola.jsp").forward(request, response);
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
