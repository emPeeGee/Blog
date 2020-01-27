package com.empeegee.servlets;

import com.empeegee.model.Article;
import com.empeegee.model.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;

@WebServlet(urlPatterns = "/NewArticle")
public class NewArticleServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/views/newArticle.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String title = request.getParameter("title");
        String text = request.getParameter("text");

        Article article = new Article(22, title, text, new Date());

        User currentUser = (User) request.getSession().getAttribute("currentSessionUser");
        currentUser.addArticle(article);


        response.sendRedirect(request.getContextPath() + "/Main");
    }
}
