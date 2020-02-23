package com.personalmoviedb.entity;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.util.Properties;


import static org.junit.jupiter.api.Assertions.*;

class MovieTest {
    private final Logger logger = LogManager.getLogger(this.getClass());
    @BeforeEach
    void setUp() {
    }

    /**TODO Append spaces to search words (if spaces exist) **/

    @Test
    void testMovieLookup() throws IOException {
        String api_key = "d50c74af75d839557ecd94c9f6bda5c8";
        String movieSearchString = "Joker";
        URL tmdbBase = new URL("https://api.themoviedb.org/3/search/" +
                "movie?api_key=" + api_key +
                "&query=" + movieSearchString + "&page=1&include_adult=false");

        URLConnection conn = tmdbBase.openConnection();
        BufferedReader in = new BufferedReader(new InputStreamReader(conn.getInputStream()));
        JsonParser parse = new JsonParser();
        JsonObject jsonObject = null;
        String inputLine;
        while ((inputLine = in.readLine()) != null) {
            jsonObject = (JsonObject)parse.parse(inputLine);
        }
        logger.info(jsonObject);
        JsonArray jsArray = (JsonArray) jsonObject.get("results");
        logger.info("Space");
        logger.info(jsArray);

        for (int i=0; i < jsArray.size(); i++) {
            JsonObject object = (JsonObject) jsArray.get(i);
            logger.info("Elements under results array: ");
            logger.info("Title: " + object.get("title"));
        }
    }
}