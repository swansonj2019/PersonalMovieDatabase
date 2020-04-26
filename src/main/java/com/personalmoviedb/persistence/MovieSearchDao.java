package com.personalmoviedb.persistence;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.personalmoviedb.entity.MovieDetails;
import com.personalmoviedb.entity.TextSearch;
import com.personalmoviedb.entity.ResultsItem;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.MediaType;

public class MovieSearchDao {
    private final Logger logger = LogManager.getLogger(this.getClass());

    public TextSearch getMovie(String searchString) {

        String movieName = searchString;

        movieName = movieName.trim();

        movieName = movieName.replaceAll("\\s", "%20");

        Client client = ClientBuilder.newClient();
        WebTarget target =
                client.target("https://api.themoviedb.org/3/search/movie?api_key=d50c74af75d839557ecd94c9f6bda5c8&language=" +
                                "en-US&query=" + movieName + "&page=1&include_adult=false");
        String response = target.request(MediaType.APPLICATION_JSON).get(String.class);
        ObjectMapper mapper = new ObjectMapper();
        TextSearch search = null;
        try {
            search = mapper.readValue(response, TextSearch.class);
        } catch (JsonProcessingException e) {
            logger.error(e);
        }

        return search;
    }

}
