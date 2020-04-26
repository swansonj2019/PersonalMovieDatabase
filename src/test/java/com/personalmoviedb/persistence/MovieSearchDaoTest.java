package com.personalmoviedb.persistence;

import com.personalmoviedb.entity.ResultsItem;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.junit.jupiter.api.Test;

import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

class MovieSearchDaoTest {
    private final Logger logger = LogManager.getLogger(this.getClass());

    @Test
    void getSearchSuccess() {
        String posterPrefix = "https://image.tmdb.org/t/p/w370_and_h556_bestv2///";
        MovieSearchDao dao = new MovieSearchDao();
        List<ResultsItem> results = dao.getMovie("Gravity").getResults();

        for (ResultsItem item : results) {
            logger.info(item.getTitle() + " Poster Path: " + posterPrefix + item.getPosterPath());
            logger.info(item.getOverview());
        }

    }

    @Test
    void testStringReplace() {
        String movieName = "Star Wars";

        movieName = movieName.trim();

        movieName = movieName.replaceAll("\\s", "%20");

        logger.info(movieName);
    }
}