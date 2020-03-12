package com.personalmoviedb.persistence;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class MovieDetailsDaoTest {

    @Test
    void getDetailsSuccess() {
        MovieDetailsDao dao = new MovieDetailsDao();
        assertEquals("Joker", dao.getDetails().getTitle());
        assertEquals("http://www.jokermovie.net/", dao.getDetails().getHomepage());
        assertEquals("During the 1980s, a failed stand-up comedian is driven insane and turns to a life of" +
                    " crime and chaos in Gotham City while becoming an infamous psychopathic crime figure.",
                dao.getDetails().getOverview());
    }
}