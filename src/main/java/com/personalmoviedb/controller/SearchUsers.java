package com.personalmoviedb.controller;

import com.personalmoviedb.entity.ResultsItem;
import com.personalmoviedb.persistence.MovieSearchDao;
import com.personalmoviedb.persistence.UserDao;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;


/**
 * A servlet to search for movies
 * @author jswanson
 */

@WebServlet(
        urlPatterns = {"/searchUser"}
)

public class SearchUsers extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        UserDao userDao = new UserDao();
        MovieSearchDao movieDao = new MovieSearchDao();
        if (req.getParameter("submit").equals("search")) {
            //req.setAttribute("users", userDao.getByPropertyEqual("userName", req.getParameter("searchTerm")));
            List<ResultsItem> results = movieDao.getMovie(req.getParameter("searchTerm")).getResults();
            req.setAttribute("searchResults", results);
        } else {
            req.setAttribute("users", userDao.getAllUsers());
        }
        RequestDispatcher dispatcher = req.getRequestDispatcher("/results.jsp");
        dispatcher.forward(req, resp);
    }
}