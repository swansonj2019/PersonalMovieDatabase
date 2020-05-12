package com.personalmoviedb.persistence;

import com.personalmoviedb.entity.Movie;
import com.personalmoviedb.entity.User;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Expression;
import javax.persistence.criteria.Root;
import java.util.List;

public class MovieDao {

    private final Logger logger = LogManager.getLogger(this.getClass());
    SessionFactory sessionFactory = SessionFactoryProvider.getSessionFactory();

    /**
     * Gets all Movies.
     *
     * @return the all movies
     */
    public List<Movie> getAllMovies() {

        Session session = sessionFactory.openSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Movie> query = builder.createQuery(Movie.class);
        Root<Movie> root = query.from(Movie.class);
        List<Movie> movies = session.createQuery(query).getResultList();
        session.close();
        return movies;
    }

//    /**
//     * Gets all users by last name.
//     * @param lastName the last name to search by
//     * @return the all users
//     */
//    public List<User> getUsersByLastName(String lastName) {
//
//        logger.debug("Searching for: {}", lastName);
//
//        Session session = sessionFactory.openSession();
//
//        CriteriaBuilder builder = session.getCriteriaBuilder();
//        CriteriaQuery<User> query = builder.createQuery(User.class);
//        Root<User> root = query.from(User.class);
//        Expression<String> propertyPath = root.get("lastName");
//        query.where(builder.like(propertyPath, "%" + lastName + "%"));
//        List<User> users = session.createQuery(query).getResultList();
//        session.close();
//        return users;
//    }
//
    /**
     * Gets a movie by id
     * @param id movie id to search by
     * @return a movie
     */
    public Movie getById(int id) {
        Session session = sessionFactory.openSession();
        Movie movie = session.get(Movie.class, id);
        session.close();
        return movie;
    }

    /**
     * update movie
     * @param movie Movie to be inserted or updated
     */
    public void saveOrUpdate(Movie movie) {
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        session.saveOrUpdate(movie);
        transaction.commit();
        session.close();
    }

    /**
     * insert movie
     * @param movie Movie to be inserted or updated
     * @return id of the inserted movie
     */
    public int insert(Movie movie) {
        int id = 0;
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        id = (int)session.save(movie);
        transaction.commit();
        session.close();
        return id;
    }

    /**
     * Delete a movie
     * @param movie Movie to be deleted
     */
    public void delete(Movie movie) {
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        session.delete(movie);
        transaction.commit();
        session.close();
    }


    /**
     * Get movie by property (exact match)
     * sample usage: getByPropertyEqual("title", "Star Wars")
     *
     * @param propertyName entity property to search by
     * @param value value of the property to search for
     * @return list of movies meeting the criteria search
     */
    public List<Movie> getByPropertyEqual(String propertyName, String value) {
        Session session = sessionFactory.openSession();

        logger.debug("Searching for movie with " + propertyName + " = " + value);

        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Movie> query = builder.createQuery( Movie.class );
        Root<Movie> root = query.from( Movie.class );
        query.select(root).where(builder.equal(root.get(propertyName), value));
        List<Movie> movies = session.createQuery( query ).getResultList();

        session.close();
        return movies;
    }

    /**
     * Get movies by property (like)
     * sample usage: getByPropertyLike("lastName", "C")
     *
     * @param propertyName entity property to search by
     * @param value value of the property to search for
     * @return list of movies meeting the criteria search
     */
    public List<Movie> getByPropertyLike(String propertyName, String value) {
        Session session = sessionFactory.openSession();

        logger.debug("Searching for movie with {} = {}",  propertyName, value);

        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Movie> query = builder.createQuery( Movie.class );
        Root<Movie> root = query.from( Movie.class );
        Expression<String> propertyPath = root.get(propertyName);

        query.where(builder.like(propertyPath, "%" + value + "%"));

        List<Movie> movies = session.createQuery( query ).getResultList();
        session.close();
        return movies;
    }
}
