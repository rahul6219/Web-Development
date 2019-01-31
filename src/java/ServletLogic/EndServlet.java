/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ServletLogic;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author surit
 */
public class EndServlet extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        String type = request.getParameter("formtype");
        String url = "/FinalPage.jsp";
             
//        if (type.equals("login")) {
//            email = request.getParameter("email");
//            password = request.getParameter("password");
//            user = UserUtils.authUser(email, password); // check Credentials
//            if (user == null) {
//                request.setAttribute("errormsg", "Invalid Credentials");
//                url = "/Index.jsp";
//                //invalid credentilas
//            } else {
//                request.setAttribute("user", user);
//                url = "/Main.jsp";
//            }
//            //TODO; check credentials
//        } else if (type.equals("signUp")) {
//            email = request.getParameter("email");
//            firstName = request.getParameter("firstName");
//            lastName = request.getParameter("lastName");
//            password = request.getParameter("password");
//            user = new User(firstName, lastName, email, password, "BASIC ACCOUNT");
//            request.setAttribute("user", user);
//            String error = UserUtils.validateUser(user);
//            if (!error.equals("")) {
//                url = "/Index.jsp";
//                request.setAttribute("error", error);
//            } else {
//                UserUtils.addUser(user);
//                url = "/Thanks.jsp";
//            }
//        }

        this.getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
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
