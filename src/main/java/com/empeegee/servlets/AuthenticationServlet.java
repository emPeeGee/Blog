package com.empeegee.servlets;

import com.empeegee.Repository;
import com.empeegee.model.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(urlPatterns = "/Authentication")
public class AuthenticationServlet extends HttpServlet {

    private Repository repository;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out = resp.getWriter();
        out.println("<h1>dsa</h1>");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        repository = new Repository();

        boolean exist = false;
        PrintWriter out = resp.getWriter();

        String name = req.getParameter("username");
        String pass = req.getParameter("password");
        User user = null;

        for (User u : repository.getUsers()) {
            if (u.getName().equals(name)) {
                if (u.getPassword().equals(pass)) {
                    exist = true;
                    user = u;
                    break;
                }
            }
        }

        if (exist) {
            HttpSession session = req.getSession(true);
            session.setAttribute("currentSessionUser", user);
            resp.sendRedirect(req.getContextPath() + "/Main");
        } else {
            out.println("<h1> Doesn't exists </h1>");
        }

    }
}
