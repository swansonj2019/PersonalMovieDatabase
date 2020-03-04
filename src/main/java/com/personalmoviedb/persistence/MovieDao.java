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
     * @param user_id movie id to search by
     * @return a movie
     */
    public Movie getById(int user_id) {
        Session session = sessionFactory.openSession();
        Movie movie = session.get(Movie.class, user_id);
        session.close();
        return movie;
    }

//    /**
//     * update user
//     * @param user  User to be inserted or updated
//     */
//    public void saveOrUpdate(User user) {
//        Session session = sessionFactory.openSession();
//        Transaction transaction = session.beginTransaction();
//        session.saveOrUpdate(user);
//        transaction.commit();
//        session.close();
//    }
//
//    /**
//     * update user
//     * @param user  User to be inserted or updated
//     * @return id of the inserted user
//     */
//    public int insert(User user) {
//        int id = 0;
//        Session session = sessionFactory.openSession();
//        Transaction transaction = session.beginTransaction();
//        id = (int)session.save(user);
//        transaction.commit();
//        session.close();
//        return id;
//    }
//
//    /**
//     * Delete a user
//     * @param user User to be deleted
//     */
//    public void delete(User user) {
//        Session session = sessionFactory.openSession();
//        Transaction transaction = session.beginTransaction();
//        session.delete(user);
//        transaction.commit();
//        session.close();
//    }
//
//
//    /**
//     * Get user by property (exact match)
//     * sample usage: getByPropertyEqual("lastName", "Curry")
//     *
//     * @param propertyName entity property to search by
//     * @param value value of the property to search for
//     * @return list of users meeting the criteria search
//     */
//    public List<User> getByPropertyEqual(String propertyName, String value) {
//        Session session = sessionFactory.openSession();
//
//        logger.debug("Searching for user with " + propertyName + " = " + value);
//
//        CriteriaBuilder builder = session.getCriteriaBuilder();
//        CriteriaQuery<User> query = builder.createQuery( User.class );
//        Root<User> root = query.from( User.class );
//        query.select(root).where(builder.equal(root.get(propertyName), value));
//        List<User> users = session.createQuery( query ).getResultList();
//
//        session.close();
//        return users;
//    }
//
//    /**
//     * Get user by property (like)
//     * sample usage: getByPropertyLike("lastName", "C")
//     *
//     * @param propertyName entity property to search by
//     * @param value value of the property to search for
//     * @return list of users meeting the criteria search
//     */
//    public List<User> getByPropertyLike(String propertyName, String value) {
//        Session session = sessionFactory.openSession();
//
//        logger.debug("Searching for user with {} = {}",  propertyName, value);
//
//        CriteriaBuilder builder = session.getCriteriaBuilder();
//        CriteriaQuery<User> query = builder.createQuery( User.class );
//        Root<User> root = query.from( User.class );
//        Expression<String> propertyPath = root.get(propertyName);
//
//        query.where(builder.like(propertyPath, "%" + value + "%"));
//
//        List<User> users = session.createQuery( query ).getResultList();
//        session.close();
//        return users;
//    }
}
