package com.personalmoviedb.persistence;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.personalmoviedb.entity.MovieDetails;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.MediaType;

public class MovieDetailsDao {
    private final Logger logger = LogManager.getLogger(this.getClass());

    public MovieDetails getDetails() {
        Client client = ClientBuilder.newClient();
        WebTarget target =
                client.target("https://api.themoviedb.org/3/movie/475557?api_key=d50c74af75d839557ecd94c9f6bda5c8&language=en-US");
        String response = target.request(MediaType.APPLICATION_JSON).get(String.class);
        ObjectMapper mapper = new ObjectMapper();
        MovieDetails details = null;
        try {
            details = mapper.readValue(response, MovieDetails.class);
        } catch (JsonProcessingException e) {
            logger.error(e);
        }

        return details;
    }
}
