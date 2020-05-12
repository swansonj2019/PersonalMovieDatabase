package com.personalmoviedb.entity;
import com.personalmoviedb.persistence.UserDao;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import com.personalmoviedb.persistence.UserDao;
import com.personalmoviedb.util.Database;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import java.util.List;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNull;

public class userDaoTest {
    private final Logger logger = LogManager.getLogger(this.getClass());

    UserDao dao;
    @BeforeEach
    void setUp() {
        dao = new UserDao();
        Database database = Database.getInstance();
        //database.runSQL("cleandb.sql");
    }

//    @Test
//    void getByIdSuccess() {
//        User returnedUser = dao.getById(1);
//        assertEquals("Nex", returnedUser.getUserName());
//        assertEquals("a94a8fe5ccb19ba61c4c0873d391e987982fbbd3", returnedUser.getPassword());
//    }
//
//    @Test
//    void getAllSuccess() {
//        List<User> users = dao.getAllUsers();
//        assertEquals(4, users.size());
//        logger.info(users.toString());
//    }
//
//    @Test
//    void insert() {
//        User user = new User("NeoUser", "Crappy Password");
//        dao.insert(user);
//        User insertedUser = dao.getById(21);
//        assertEquals("NeoUser", insertedUser.getUserName());
//        logger.info(user);
//        logger.info(insertedUser);
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
//        String newUsername = "Bobby McGee";
//        User toBeUpdated = dao.getById(1);
//        toBeUpdated.setUsername(newUsername);
//        dao.saveOrUpdate(toBeUpdated);
//        assertEquals(newUsername, toBeUpdated.getUserName());
//
//    }
//
//    @Test
//    void getUsersByPropertyEqual() {
//        List<User> users = dao.getByPropertyEqual("userName", "Wade");
//        assertEquals(1, users.size());
//    }
}
