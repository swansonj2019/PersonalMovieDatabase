package com.personalmoviedb.entity;

import com.personalmoviedb.persistence.MovieDao;
import com.personalmoviedb.persistence.UserDao;
import com.personalmoviedb.util.Database;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.util.List;

import static org.junit.Assert.assertEquals;
import static org.junit.jupiter.api.Assertions.*;

class MovieDaoTest {
    private final Logger logger = LogManager.getLogger(this.getClass());

    MovieDao dao;

    @BeforeEach
    void setUp() {
        dao = new MovieDao();
        Database database = Database.getInstance();
        database.runSQL("cleandb.sql");
    }

    @Test
    void getAllMovies() {
        List<Movie> movies = dao.getAllMovies();
        assertEquals(1, movies.size());
        logger.info(movies.toString());
    }

    @Test
    void getByIdSuccess() {
        Movie returnedMovie = dao.getById(1);
        assertEquals("Star Wars: The Last Jedi", returnedMovie.getTitle());
        assertEquals("181808", returnedMovie.getTmdbId());
    }
}