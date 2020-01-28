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

@WebServlet(urlPatterns = "/Main/Article")
public class ArticleServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        User currentUser = (User) req.getSession().getAttribute("currentSessionUser");
        int id = Integer.parseInt(req.getParameter("id"));
        Article article = currentUser.getArticleById(id);

        req.setAttribute("article", article);

        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/views/article.jsp");
        dispatcher.forward(req, resp);
    }
}
