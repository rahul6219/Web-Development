package ServletLogic;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
//import javaBean.Cart;
import javaBean.Movie;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//@WebServlet(name = "MainServlet", urlPatterns = "/MainServ")
public class MainServlet extends HttpServlet {

    public static ArrayList<Movie> servList = new ArrayList<>();

    public void mlist(Movie m) {
        servList.add(m);
    }

    public static ArrayList<Movie> getServList() {
        return servList;
    }

    public static void setServList(ArrayList<Movie> servList) {
        MainServlet.servList = servList;
    }

    public static void removeServList(Movie m) {
        MainServlet.servList.remove(m);

    }
    
 public static void removeItem(String title)
    {
        for(int i=0; i<servList.size();i++)
        {
            if(servList.get(i).getTitle().equals(title))
            {
                servList.remove(servList.get(i));
                break;
            }
        }
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String title = request.getParameter("formtype");
        Double price = 4.99;
        String url;

        Movie m = new Movie(title, price);

        if (title.equals("3 Idiots")) {
            servList.add(m);
        } else if (title.equals("Avengers: Age of Ultron")) {
            servList.add(m);
        } else if (title.equals("The Avengers")) {
            servList.add(m);
        } else if (title.equals("Batman V Superman: Dawn of Justice")) {
            servList.add(m);
        } else if (title.equals("Bhaag Milkha Bhaag")) {
            servList.add(m);
        } else if (title.equals("Black Panther")) {
            servList.add(m);
        } else if (title.equals("Captain America: Civil War")) {
            servList.add(m);
        } else if (title.equals("Dangal")) {
            servList.add(m);
        } else if (title.equals("Iron Man")) {
            servList.add(m);
        } else if (title.equals("Justice League")) {
            servList.add(m);
        } else if (title.equals("Man Of Steel")) {
            servList.add(m);
        } else if (title.equals("Padmaavat")) {
            servList.add(m);
        } else if (title.equals("Raees")) {
            servList.add(m);
        } else if (title.equals("Raid")) {
            servList.add(m);
        } else if (title.equals("Sajjan Singh Rangroot")) {
            servList.add(m);
        } else if (title.equals("Spider-Man: Homecoming")) {
            servList.add(m);
        } else if (title.equals("Suicide Squad")) {
            servList.add(m);
        } else if (title.equals("Thor: Dark World")) {
            servList.add(m);
        } else if (title.equals("Thor: Ragnarok")) {
            servList.add(m);
        } else if (title.equals("Captain America: Winter Solider")) {
            servList.add(m);
        } else if (title.equals("Wonder Woman")) {
            servList.add(m);
        }

        url = "/Cart.jsp";

        HttpSession session = request.getSession();
        session.setAttribute("servList", servList);
        getServletContext().getRequestDispatcher(url).forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          String title=request.getParameter("title");
        //Movie m=(Movie)title;
        MainServlet.removeItem(title);
        String url = "/Cart.jsp";
        HttpSession session = request.getSession();
        this.getServletContext().getRequestDispatcher(url).forward(request, response);
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
