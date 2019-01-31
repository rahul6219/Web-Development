//package ServletLogic;
//
//import java.io.IOException;
//import java.io.PrintWriter;
//import javaBean.User;
//import javax.servlet.ServletException;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//
////@WebServlet(name = "HomeServlet", urlPatterns = "/HomeServlet")
//public class HomeServlet extends HttpServlet {
//
//    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        String formType = request.getParameter("formtype");
//        User u = new User();
//        String url = "";
//
//        if (formType.equals("GuestUser")) {
//            url = "/Main.jsp";
//        } else if (formType.equals("logInUser")) {
//            String email = request.getParameter("email");
//            String password = request.getParameter("password");
//            u.setEmail(email);
//            u.setPassword(password);
//            if (email.equals("Rahul6219@yahoo.com") && password.equals("1234")) {
//                url = "/Main.jsp";
//            }
//
//        } else if (formType.equals("Create_AccountUser")) {
//            String email = request.getParameter("email");
//            String firstName = request.getParameter("firstName");
//            String lastName = request.getParameter("lastName");
//            String password = request.getParameter("password");
//
//            u.setEmail(email);
//            u.setFirstName(firstName);
//            u.setLastName(lastName);
//            u.setPassword(password);
//
//            url = "/Home.jsp";
//
//        }
//
//        HttpSession session = request.getSession();
//        session.setAttribute("user", u);
//        this.getServletContext().getRequestDispatcher(url).forward(request, response);
//    }
//
//    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        processRequest(request, response);
//    }
//
//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        processRequest(request, response);
//    }
//
//    @Override
//    public String getServletInfo() {
//        return "Short description";
//    }// </editor-fold>
//}
