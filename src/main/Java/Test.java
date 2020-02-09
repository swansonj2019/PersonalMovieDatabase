import com.uwetrottmann.tmdb2.Tmdb;
import com.uwetrottmann.tmdb2.entities.*;
import com.uwetrottmann.tmdb2.services.MoviesService;
import org.apache.logging.log4j.Logger;
import retrofit2.Call;
import org.apache.logging.log4j.LogManager;

import java.util.Map;

public class Test {
    private final Logger logger = LogManager.getLogger(this.getClass());

    String apiKey = "d50c74af75d839557ecd94c9f6bda5c8";
    Tmdb tmdb = new Tmdb(apiKey);

    MoviesService moviesService = new MoviesService() {

        @Override
        public Call<Movie> summary(int i, String s) {
            return null;
        }

        @Override
        public Call<Movie> summary(int i, String s, AppendToResponse appendToResponse) {
            return null;
        }

        @Override
        public Call<Movie> summary(int i, String s, AppendToResponse appendToResponse, Map<String, String> map) {
            return null;
        }

        @Override
        public Call<AccountStates> accountStates(int i) {
            return null;
        }

        @Override
        public Call<AlternativeTitles> alternativeTitles(int i, String s) {
            return null;
        }

        @Override
        public Call<Changes> changes(int i, TmdbDate tmdbDate, TmdbDate tmdbDate1, Integer integer) {
            return null;
        }

        @Override
        public Call<Credits> credits(int i) {
            return null;
        }

        @Override
        public Call<MovieExternalIds> externalIds(int i, String s) {
            return null;
        }

        @Override
        public Call<Images> images(int i, String s) {
            return null;
        }

        @Override
        public Call<Keywords> keywords(int i) {
            return null;
        }

        @Override
        public Call<ListResultsPage> lists(int i, Integer integer, String s) {
            return null;
        }

        @Override
        public Call<MovieResultsPage> similar(int i, Integer integer, String s) {
            return null;
        }

        @Override
        public Call<MovieResultsPage> recommendations(int i, Integer integer, String s) {
            return null;
        }

        @Override
        public Call<ReleaseDatesResults> releaseDates(int i) {
            return null;
        }

        @Override
        public Call<ReviewResultsPage> reviews(int i, Integer integer, String s) {
            return null;
        }

        @Override
        public Call<Translations> translations(int i) {
            return null;
        }

        @Override
        public Call<Videos> videos(int i, String s) {
            return null;
        }

        @Override
        public Call<Movie> latest() {
            return null;
        }

        @Override
        public Call<MovieResultsPage> nowPlaying(Integer integer, String s, String s1) {
            return null;
        }

        @Override
        public Call<MovieResultsPage> popular(Integer integer, String s, String s1) {
            return null;
        }

        @Override
        public Call<MovieResultsPage> topRated(Integer integer, String s, String s1) {
            return null;
        }

        @Override
        public Call<MovieResultsPage> upcoming(Integer integer, String s, String s1) {
            return null;
        }

        @Override
        public Call<Status> addRating(Integer integer, RatingObject ratingObject) {
            return null;
        }

        @Override
        public Call<Status> deleteRating(Integer integer) {
            return null;
        }
    };

    public void getMovie(int num, String title) {
        try {
            Movie movie = (Movie) moviesService.summary(num, title);
            System.out.println(movie);
            logger.info(movie);
        } catch (Exception e) {
            // see execute() javadoc
        }
    }

    public void go() {
        getMovie(475557, "Joker");
    }
}
