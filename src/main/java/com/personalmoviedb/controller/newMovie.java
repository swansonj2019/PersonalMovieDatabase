package com.personalmoviedb.controller;

import com.personalmoviedb.entity.Movie;
import com.personalmoviedb.entity.ResultsItem;
import com.personalmoviedb.persistence.MovieDao;
import com.personalmoviedb.persistence.MovieDetailsDao;
import com.personalmoviedb.persistence.MovieSearchDao;
import com.personalmoviedb.persistence.UserDao;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.time.LocalDateTime;
import java.util.List;


/**
 * A servlet to add a new movie
 * @author jswanson
 */

@WebServlet(
        urlPatterns = {"/insertMovie"}
)

public class newMovie extends HttpServlet{

    private final Logger logger = LogManager.getLogger(this.getClass());
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        MovieDetailsDao details = new MovieDetailsDao();
        if (req.getParameter("submit").equals("details")) {
            String id = req.getParameter("id");
            String title = req.getParameter("title");
            String overview = req.getParameter("overview");
            String release = req.getParameter("release");
            String rating = req.getParameter("rating");
            String description = req.getParameter("description");
            String posterUrl = req.getParameter("posterUrl");

            logger.info(id);
            logger.info(title);
            logger.info(overview);
            logger.info(release);
            logger.info(rating);
            logger.info(description);

            MovieDao dao = new MovieDao();
            LocalDateTime now = LocalDateTime.now();
            Movie movie = new Movie(title,id,overview,release,posterUrl,null,"user",rating,description,now);
            dao.insert(movie);

            req.setAttribute("title", title);
        } else {
//            req.setAttribute("users", userDao.getAllUsers());
        }
        RequestDispatcher dispatcher = req.getRequestDispatcher("/insertedMovie.jsp");
        dispatcher.forward(req, resp);
    }
}
