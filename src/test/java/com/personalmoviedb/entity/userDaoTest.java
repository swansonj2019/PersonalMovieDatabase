package com.personalmoviedb.entity;

import com.personalmoviedb.persistence.UserDao;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

public class userDaoTest {
    private final Logger logger = LogManager.getLogger(this.getClass());

    UserDao dao;
    @BeforeEach
    void setUp() {
        dao = new UserDao();
//        Database database = Database.getInstance();
//        database.runSQL("cleandb.sql");
    }

//    @Test
//    void getByIdSuccess() {

//        Book returnedBook = dao.getById(2);
//        assertEquals("Beginning Hibernate", returnedBook.getTitle());
//        assertEquals("joseph ottinger", returnedBook.getAuthor());
//        assertEquals("978-1-4842-2319-2", returnedBook.getIsbn());
//        assertEquals(2016, returnedBook.getPublicationYear());
//    }
//
//    @Test
//    void getAllSuccess() {
//        List<Book> books = dao.getAll();
//        assertEquals(3, books.size());
//    }
//
//    @Test
//    void insert() {
//        Book book = new Book("NewBook", "Joel Swanson", "325-4463-333-43", 2020);
//        dao.insert(book);
//        Book insertedBook = dao.getById(4);
//        assertEquals("Joel Swanson", insertedBook.getAuthor());
//        logger.info(book);
//        logger.info(insertedBook);
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
//
//        String newTitle = "Joel Sucks @ Hibernate";
//        Book toBeUpdated = dao.getById(1);
//        toBeUpdated.setTitle(newTitle);
//        dao.saveOrUpdate(toBeUpdated);
//        assertEquals(newTitle, toBeUpdated.getTitle());
//
//    }
}
