//package com.personalmoviedb;
//
//import com.fasterxml.jackson.databind.ObjectMapper;
//import com.google.gson.JsonArray;
//import com.google.gson.JsonObject;
//import com.google.gson.JsonParser;
//import com.personalmoviedb.entity.MovieDetails;
//import com.uwetrottmann.tmdb2.Tmdb;
//import com.uwetrottmann.tmdb2.entities.*;
//import com.uwetrottmann.tmdb2.enumerations.AppendToResponseItem;
//import com.uwetrottmann.tmdb2.services.MoviesService;
//import com.uwetrottmann.tmdb2.services.SearchService;
//import org.apache.logging.log4j.LogManager;
//import org.apache.logging.log4j.Logger;
//import org.junit.jupiter.api.BeforeEach;
//import org.junit.jupiter.api.Test;
//import retrofit2.Response;
//
//import javax.ws.rs.client.Client;
//import javax.ws.rs.client.ClientBuilder;
//import javax.ws.rs.client.WebTarget;
//import javax.ws.rs.core.MediaType;
//import java.io.BufferedReader;
//import java.io.IOException;
//import java.io.InputStreamReader;
//import java.net.URL;
//import java.net.URLConnection;
//import java.util.Properties;
//
//
//import static org.junit.jupiter.api.Assertions.*;
//
//class apiMovieTest {
//    private final Logger logger = LogManager.getLogger(this.getClass());
//    @BeforeEach
//    void setUp() {
//    }
//
//    /**TODO Append spaces to search words (if spaces exist) **/
//
//    @Test
//    void testMovieLookup() throws IOException {
//        String api_key = "d50c74af75d839557ecd94c9f6bda5c8";
//        String poster_prefix = "https://image.tmdb.org/t/p/w370_and_h556_bestv2///";
//        String poster_path = "";
//        String movieSearchString = "Batman";
//        URL tmdbBase = new URL("https://api.themoviedb.org/3/search/" +
//                "movie?api_key=" + api_key +
//                "&query=" + movieSearchString + "&page=1&include_adult=false");
//
//        URLConnection conn = tmdbBase.openConnection();
//        BufferedReader in = new BufferedReader(new InputStreamReader(conn.getInputStream()));
//        JsonParser parse = new JsonParser();
//        JsonObject jsonObject = null;
//        String inputLine;
//        while ((inputLine = in.readLine()) != null) {
//            jsonObject = (JsonObject)parse.parse(inputLine);
//        }
//        logger.info(jsonObject);
//        JsonArray jsArray = (JsonArray) jsonObject.get("results");
//        logger.info("Space");
//        logger.info(jsArray);
//
//        for (int i=0; i < jsArray.size(); i++) {
//            JsonObject object = (JsonObject) jsArray.get(i);
//            logger.info("Elements under results array: ");
//            logger.info("Title: " + object.get("title"));
//            logger.info("Poster Path: " +  poster_prefix + object.get("poster_path"));
//        }
//    }
//
//    @Test
//    void movieTest() {
//        String yt_url = "https://www.youtube.com/watch?v=";
//        String api_key = "d50c74af75d839557ecd94c9f6bda5c8";
//        Tmdb tmdb = new Tmdb(api_key);
//        MoviesService moviesService = tmdb.moviesService();
//        // Call any of the available endpoints
//        try {
//            Response<Movie> response = moviesService
//                    .summary(475557, "en-US", new AppendToResponse(AppendToResponseItem.IMAGES
//                            , AppendToResponseItem.VIDEOS))
//                    .execute();
//            if (response.isSuccessful()) {
//                Movie movie = response.body();
//                logger.info("ID: " + movie.id + " " + movie.title + ": " + movie.tagline +
//                        " Released on: " + movie.release_date);
//
//                for (Videos.Video video : movie.videos.results) {
//                    logger.info(video.name + " " + video.type +  " " + video.site);
//                    logger.info( yt_url + video.key);
//                }
//            }
//        } catch (Exception e) {
//            // see execute() javadoc
//        }
//
//
//    }
//
//    @Test
//    // Using Wrapper with Search
//    void movieSearchResults() {
//        String yt_url = "https://www.youtube.com/watch?v=";
//        String poster_prefix = "https://image.tmdb.org/t/p/w370_and_h556_bestv2///";
//        String api_key = "d50c74af75d839557ecd94c9f6bda5c8";
//        String posterTest = "";
//        Tmdb tmdb = new Tmdb(api_key);
//        SearchService searchService = tmdb.searchService();
//
//        try {
//            Response<MovieResultsPage> response = searchService
//                    .movie("Joker", 1, "en-US", null, false, null, null)
//                    .execute();
//            if (response.isSuccessful()) {
//                MovieResultsPage results = response.body();
//                logger.info(response.body());
//                for (BaseMovie result : results.results) {
//                    //logger.info("ID: " + result.id +  " Title: " + result.title + " Poster: " + poster_prefix + result.poster_path);
//                    //logger.info("Backdrop Test: "+ poster_prefix + result.backdrop_path);
//                }
//            }
//        } catch (IOException e) {
//            e.printStackTrace();
//        }
//    }
//
//    @Test
//    public void testServiceClient() throws Exception{
//        Client client = ClientBuilder.newClient();
//        WebTarget target =
//                client.target("https://api.themoviedb.org/3/movie/475557?api_key=d50c74af75d839557ecd94c9f6bda5c8&language=en-US");
//        String response = target.request(MediaType.APPLICATION_JSON).get(String.class);
//        ObjectMapper mapper = new ObjectMapper();
//        MovieDetails details = mapper.readValue(response, MovieDetails.class);
//        assertEquals("Joker", details.getTitle());
//        //assertEquals("???", response);
//    }
//
//}