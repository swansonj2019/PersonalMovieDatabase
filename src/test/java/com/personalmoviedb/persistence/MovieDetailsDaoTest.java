package com.personalmoviedb.persistence;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class MovieDetailsDaoTest {

    @Test
    void getDetailsSuccess() {
        MovieDetailsDao dao = new MovieDetailsDao();
        assertEquals("Joker", dao.getDetails().getTitle());
    }
}