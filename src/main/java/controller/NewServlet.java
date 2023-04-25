/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author crist
 */
public class NewServlet extends HttpServlet {

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
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            //out.println("sus datos fueron ingresados");
            
            
            String rut = request.getParameter("rut");
            
             if (rut.length()>0){
                out.print(rut);
            }else{
                out.print(rut + "rut no ingresado" + "<br>");
            }
            
           String digitador = request.getParameter("digitador");
           
           if (digitador.length()>0){
            out.print(digitador);
                  }else{
                out.print(digitador + "digitador no ingresado"+ "<br>");
           }             
            String nombre = request.getParameter("nombre");
            
            if (nombre.length()>0){
                out.print(nombre);
            }else{
                out.print(nombre + "nombre no ingresado" + "<br>");
            }
            
            
            String apellido_paterno = request.getParameter("apellido_paterno");
            
            if (apellido_paterno.length()>0){
                out.print(apellido_paterno);
            }else{
                out.print(apellido_paterno + "apellido paterno no ingresado" + "<br>");
            }
            
            
            String apellido_materno = request.getParameter("apellido_materno");
            if (apellido_materno.length()>0){
                out.print(apellido_materno);
            }else{
                out.print(apellido_materno + "apellido materno no ingresado" + "<br>");
            }
            
            String mail = request.getParameter("mail");
         if (mail.length()>0){
                out.print(mail);
            }else{
                out.print(mail + "mail no ingresado" +"<br>");
            }
            
            String nacimiento = request.getParameter("nacimiento");
            if (nacimiento.length()>0){
                out.print(nacimiento);
            }else{
                out.print(nacimiento + "fecha de nacimiento no ingresada"+ "<br>");
            }
             String password= request.getParameter("password");
            if (password.length()>0){
                out.print("contrasena ingresada");
            }else{
                out.print(password + "contrasena no ingresada"+ "<br>");
            }
            
            
            String direccion = request.getParameter("direccion");
            
            if (direccion.length()>0){
                out.print(direccion);
            }else{
                out.print(direccion + "direccion no ingresada"+ "<br>");
            }
            
            
            String telefono = request.getParameter("telefono");
            
            if (telefono.length()>0){
                out.print(telefono);
            }else{
                out.print( telefono + "telefono no ingresado"+ "<br>");
            }
            
        
            
            
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
