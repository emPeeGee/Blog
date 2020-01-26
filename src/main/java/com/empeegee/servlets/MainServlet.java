package com.empeegee.servlets;

import com.empeegee.Repository;
import com.empeegee.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(urlPatterns = "/Main")
public class MainServlet extends HttpServlet {

    private Repository repository;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        repository = new Repository();

        boolean exist = false;
        PrintWriter out = resp.getWriter();

        String name = req.getParameter("username");
        String pass = req.getParameter("password");

        for (User user : repository.getUsers()) {
            if (user.getName().equals(name)) {
                if (user.getPassword().equals(pass)) {
                    exist = true;
                }
            }
        }

        if (exist) {
            out.println("<h1> Successful </h1>");
        } else {
            out.println("<h1> Doesn't exists </h1>");
        }

    }
}
