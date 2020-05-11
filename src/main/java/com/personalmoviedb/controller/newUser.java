package com.personalmoviedb.controller;

import com.personalmoviedb.entity.ResultsItem;
import com.personalmoviedb.entity.Role;
import com.personalmoviedb.entity.User;
import com.personalmoviedb.persistence.MovieSearchDao;
import com.personalmoviedb.persistence.RoleDao;
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
 * A servlet to add new users
 * @author jswanson
 */

@WebServlet(
        urlPatterns = {"/newUser"}
)

public class newUser extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        UserDao userDao = new UserDao();
        RoleDao roleDao = new RoleDao();
        if (req.getParameter("submit").equals("search")) {
            String username = req.getParameter("username");
            String password = req.getParameter("password");
            User user = new User(username, password);
            userDao.insert(user);

            Role role = new Role(username, "admin");
            roleDao.insert(role);

        } else {
            req.setAttribute("users", userDao.getAllUsers());
        }
        RequestDispatcher dispatcher = req.getRequestDispatcher("/userAdded.jsp");
        dispatcher.forward(req, resp);
    }
}