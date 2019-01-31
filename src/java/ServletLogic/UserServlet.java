package ServletLogic;

import java.io.IOException;
import java.io.PrintWriter;
import javaBean.User;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import util.UserUtils;

public class UserServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String type = request.getParameter("formtype");
        String email, password, lastName, firstName;
        User user = null;
        String url = "/Index.jsp";
        if (type.equals("login")) {
            email = request.getParameter("email");
            password = request.getParameter("password");
            user = UserUtils.authUser(email, password); // check Credentials
            if (user == null) {
                request.setAttribute("errormsg", "Invalid Credentials");
                url = "/Index.jsp";
                //invalid credentilas
            } else {
                request.setAttribute("user", user);
                url = "/Main.jsp";
            }
            //TODO; check credentials
        } else if (type.equals("signUp")) {
            email = request.getParameter("email");
            firstName = request.getParameter("firstName");
            lastName = request.getParameter("lastName");
            password = request.getParameter("password");
            user = new User(firstName, lastName, email, password, "BASIC");
            request.setAttribute("user", user);
            String error = UserUtils.validateUser(user);
            if (!error.equals("")) {
                url = "/Index.jsp";
                request.setAttribute("error", error);
            } else {
                UserUtils.addUser(user);
                url = "/Thanks.jsp";
            }
        }

        this.getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
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
