
package ServletLogic;

import java.io.IOException;
import java.io.PrintWriter;
import javaBean.User;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import util.UserUtils;

public class AdminServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
          String url = "/Admin.jsp";
        if (null != request.getParameter("email")) {
            String method = request.getParameter("method");
            if (method.equals("deleteUser")) {
                UserUtils.removeUser(request.getParameter("email"));
            }else if(method.equals("editUser")){
                User u = new User(request.getParameter("firstName"),
                                  request.getParameter("lastName"),
                                  request.getParameter("email"),
                                  request.getParameter("password"),
                                  request.getParameter("role"));
                UserUtils.updateUser(u);
                url = "/Admin.jsp";
            }else if(method.equals("showUserEditForm")){
                User u = new User(request.getParameter("firstName"),
                                  request.getParameter("lastName"),
                                  request.getParameter("email"),
                                  request.getParameter("password"),
                                  request.getParameter("role"));
                request.setAttribute("usertoedit", u);
                url = "/UserEdit.jsp";
            }
        }

        request.setAttribute("users", UserUtils.getUsers());
        this.getServletContext().getRequestDispatcher(url).forward(request, response);
        }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
   
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
