package controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet(name = "LoginControlleServlet", urlPatterns = "/login")
public class LoginControlleServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("txtUsername");
        String password = request.getParameter("txtPassword");
        HttpSession session = request.getSession();
        if (username.equals("open") && password.equals("123")) {
            Cookie user = new Cookie("user", "open");
            Cookie pass = new Cookie("pass", "123");
            if (request.getParameter("chkRemember") != null) {
                user.setMaxAge(60 * 60 * 24);
                pass.setMaxAge(60 * 60 * 24);
            } else {
                user.setMaxAge(0);
                pass.setMaxAge(0);
            }
            response.addCookie(user);
            response.addCookie(pass);

            session.setAttribute("username", "open");
            RequestDispatcher dis = request.getRequestDispatcher("index.jsp");
            dis.forward(request, response);
        } else {
            request.setAttribute("error", "Username and Password invalid !");
            RequestDispatcher dis = request.getRequestDispatcher("login.jsp");
            dis.forward(request, response);
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
