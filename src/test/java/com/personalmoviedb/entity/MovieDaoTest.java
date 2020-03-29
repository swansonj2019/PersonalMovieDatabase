//package com.personalmoviedb.entity;
//
//import com.personalmoviedb.persistence.MovieDao;
//import com.personalmoviedb.util.Database;
//import org.apache.logging.log4j.LogManager;
//import org.apache.logging.log4j.Logger;
//import org.junit.jupiter.api.BeforeEach;
//import org.junit.jupiter.api.Test;
//
//import java.time.LocalDateTime;
//import java.util.List;
//
//import static org.junit.Assert.assertEquals;
//import static org.junit.Assert.assertNull;
//
//class MovieDaoTest {
//    private final Logger logger = LogManager.getLogger(this.getClass());
//    MovieDao dao;
//
//    @BeforeEach
//    void setUp() {
//        dao = new MovieDao();
//        Database database = Database.getInstance();
//        database.runSQL("cleandb.sql");
//    }
//
//    @Test
//    void getAllMovies() {
//        List<Movie> movies = dao.getAllMovies();
//        assertEquals(2, movies.size());
//        logger.info(movies.toString());
//    }
//
//    @Test
//    void getByIdSuccess() {
//        Movie returnedMovie = dao.getById(1);
//        assertEquals("Star Wars: The Last Jedi", returnedMovie.getTitle());
//        assertEquals("181808", returnedMovie.getTmdbId());
//    }
//
//    @Test
//    void delete() {
//        dao.delete(dao.getById(1));
//        assertNull(dao.getById(1));
//    }
//
//    @Test
//    void saveOrUpdate() {
//        String newTitle = "Star Wars: This one Kind of Stinks!";
//        Movie toBeUpdated = dao.getById(1);
//        toBeUpdated.setTitle(newTitle);
//        dao.saveOrUpdate(toBeUpdated);
//        assertEquals(newTitle, toBeUpdated.getTitle());
//
//    }
//
//    @Test
//    void insert() {
//        LocalDateTime now = LocalDateTime.now();
//        Movie movie = new Movie("Star Wars: Return of the Jedi", "222", "This Movie Stinks!",
//                "2017-12-13", "poster.jpg", null, "Bob",
//                "0", "Stinky", now);
//        dao.insert(movie);
//        Movie insertedMovie = dao.getById(242);
//        assertEquals("Star Wars: Return of the Jedi", insertedMovie.getTitle());
//    }
//
//    @Test
//    void getMoviesByPropertyEqual() {
//        List<Movie> movies = dao.getByPropertyEqual("title", "Star Wars: The Last Jedi");
//        assertEquals(1, movies.size());
//    }
//
//    @Test
//    void getMoviesByPropertyLike() {
//        List<Movie> movies = dao.getByPropertyLike("title", "Star Wars");
//        assertEquals(2, movies.size());
//        logger.info(movies);
//    }
//}