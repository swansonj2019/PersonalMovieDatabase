package com.personalmoviedb.persistence;

import com.personalmoviedb.entity.Role;
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

public class RoleDao {
    private final Logger logger = LogManager.getLogger(this.getClass());
    SessionFactory sessionFactory = SessionFactoryProvider.getSessionFactory();

//    /**
//     * Gets all users.
//     *
//     * @return the all users
//     */
//    public List<User> getAllUsers() {
//
//        Session session = sessionFactory.openSession();
//        CriteriaBuilder builder = session.getCriteriaBuilder();
//        CriteriaQuery<User> query = builder.createQuery(User.class);
//        Root<User> root = query.from(User.class);
//        List<User> users = session.createQuery(query).getResultList();
//        session.close();
//        return users;
//    }
//
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

    /**
     * Gets a user by id
     * @param id users id to search by
     * @return a user
     */
    public Role getById(int id) {
        Session session = sessionFactory.openSession();
        Role role = session.get(Role.class, id);
        session.close();
        return role;
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

    /**
     * Insert Role
     * @param role Role to be inserted or updated
     * @return id of the inserted role
     */
    public int insert(Role role) {
        int id = 0;
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        id = (int)session.save(role);
        transaction.commit();
        session.close();
        return id;
    }
//
    /**
     * Delete a user
     * @param role Role to be deleted
     */
    public void delete(Role role) {
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        session.delete(role);
        transaction.commit();
        session.close();
    }


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
