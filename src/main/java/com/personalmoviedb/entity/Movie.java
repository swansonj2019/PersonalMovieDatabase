package com.personalmoviedb.entity;

import jdk.jfr.Enabled;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.Date;
import java.util.Objects;

/**
 * Class to represent a Movie
 *
 * @author Jswanson
 */
@Entity(name = "Movie")
@Table(name = "movie_db")
public class Movie {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO, generator = "native")
    @GenericGenerator(name = "native", strategy = "native")
    @Column(name = "user_id")
    private int id;

    @Column(name = "title")
    private String title;

    @Column(name = "tmdb_id")
    private String tmdbId;
    @Column(name = "overview")
    private String overview;

    @Column(name = "release_date")
    private Date releaseDate;

    @Column(name = "poster_file")
    private String posterFile;

    @Column(name = "yt_search_string")
    private String ytSearchString;

    @Column(name = "username")
    private String username;

    @Column(name = "user_rating")
    private String userRating;

    @Column(name = "personal_review")
    private String personalReview;

    @Column(name = "entered_date")
    private Date enteredDate;

    /**
     * Instantiates a new Movie.
     */
    public Movie() {
    }

    /**
     * Instantiates a new Movie.
     *
     * @param title          the title
     * @param tmdbId         the tmdb id
     * @param overview       the overview
     * @param releaseDate    the release date
     * @param posterFile     the poster file
     * @param ytSearchString the yt search string
     * @param username       the username
     * @param userRating     the user rating
     * @param personalReview the personal review
     * @param enteredDate    the entered date
     */
    public Movie(String title, String tmdbId, String overview, Date releaseDate,
                 String posterFile, String ytSearchString, String username,
                 String userRating, String personalReview, Date enteredDate) {
        this.title = title;
        this.tmdbId = tmdbId;
        this.overview = overview;
        this.releaseDate = releaseDate;
        this.posterFile = posterFile;
        this.ytSearchString = ytSearchString;
        this.username = username;
        this.userRating = userRating;
        this.personalReview = personalReview;
        this.enteredDate = enteredDate;
    }

    /**
     * Gets id.
     *
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * Sets id.
     *
     * @param id the id
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * Gets title.
     *
     * @return the title
     */
    public String getTitle() {
        return title;
    }

    /**
     * Sets title.
     *
     * @param title the title
     */
    public void setTitle(String title) {
        this.title = title;
    }

    /**
     * Gets tmdb id.
     *
     * @return the tmdb id
     */
    public String getTmdbId() {
        return tmdbId;
    }

    /**
     * Sets tmdb id.
     *
     * @param tmdbId the tmdb id
     */
    public void setTmdbId(String tmdbId) {
        this.tmdbId = tmdbId;
    }

    /**
     * Gets overview.
     *
     * @return the overview
     */
    public String getOverview() {
        return overview;
    }

    /**
     * Sets overview.
     *
     * @param overview the overview
     */
    public void setOverview(String overview) {
        this.overview = overview;
    }

    /**
     * Gets release date.
     *
     * @return the release date
     */
    public Date getReleaseDate() {
        return releaseDate;
    }

    /**
     * Sets release date.
     *
     * @param releaseDate the release date
     */
    public void setReleaseDate(Date releaseDate) {
        this.releaseDate = releaseDate;
    }

    /**
     * Gets poster file.
     *
     * @return the poster file
     */
    public String getPosterFile() {
        return posterFile;
    }

    /**
     * Sets poster file.
     *
     * @param posterFile the poster file
     */
    public void setPosterFile(String posterFile) {
        this.posterFile = posterFile;
    }

    /**
     * Gets yt search string.
     *
     * @return the yt search string
     */
    public String getYtSearchString() {
        return ytSearchString;
    }

    /**
     * Sets yt search string.
     *
     * @param ytSearchString the yt search string
     */
    public void setYtSearchString(String ytSearchString) {
        this.ytSearchString = ytSearchString;
    }

    /**
     * Gets entered by user.
     *
     * @return the entered by user
     */
    public String getUsername() {
        return username;
    }

    /**
     * Sets entered by user.
     *
     * @param username the username
     */
    public void setUsername(String username) {
        this.username = username;
    }

    /**
     * Gets user rating.
     *
     * @return the user rating
     */
    public String getUserRating() {
        return userRating;
    }

    /**
     * Sets user rating.
     *
     * @param userRating the user rating
     */
    public void setUserRating(String userRating) {
        this.userRating = userRating;
    }

    /**
     * Gets personal review.
     *
     * @return the personal review
     */
    public String getPersonalReview() {
        return personalReview;
    }

    /**
     * Sets personal review.
     *
     * @param personalReview the personal review
     */
    public void setPersonalReview(String personalReview) {
        this.personalReview = personalReview;
    }

    /**
     * Gets entered date.
     *
     * @return the entered date
     */
    public Date getEnteredDate() {
        return enteredDate;
    }

    /**
     * Sets entered date.
     *
     * @param enteredDate the entered date
     */
    public void setEnteredDate(Date enteredDate) {
        this.enteredDate = enteredDate;
    }

    @Override
    public String toString() {
        return "Movie{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", tmdbId='" + tmdbId + '\'' +
                ", overview='" + overview + '\'' +
                ", releaseDate=" + releaseDate +
                ", posterFile='" + posterFile + '\'' +
                ", ytSearchString='" + ytSearchString + '\'' +
                ", username=" + username +
                ", userRating='" + userRating + '\'' +
                ", personalReview='" + personalReview + '\'' +
                ", enteredDate=" + enteredDate +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Movie movie = (Movie) o;
        return id == movie.id &&
                title.equals(movie.title) &&
                tmdbId.equals(movie.tmdbId) &&
                overview.equals(movie.overview) &&
                releaseDate.equals(movie.releaseDate) &&
                posterFile.equals(movie.posterFile) &&
                ytSearchString.equals(movie.ytSearchString) &&
                username.equals(movie.username) &&
                userRating.equals(movie.userRating) &&
                personalReview.equals(movie.personalReview) &&
                enteredDate.equals(movie.enteredDate);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, title, tmdbId, overview, releaseDate, posterFile, ytSearchString, username, userRating, personalReview, enteredDate);
    }
}
