<%@ page import="com.personalmoviedb.persistence.MovieDetailsDao" %>
<%@ page import="com.personalmoviedb.entity.MovieDetails" %>
<%@ page import="com.personalmoviedb.persistence.MovieDao" %>
<%@ page import="com.personalmoviedb.entity.Movie" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<c:import url="doctype_header.jsp"/>

<c:import url="nav_body.jsp" />

<div class="container">

        <%

            HttpSession sess = request.getSession();

            MovieDetailsDao dao = new MovieDetailsDao();

            MovieDetails details = dao.getDetails(request.getParameter("id"));

            sess.setAttribute("details", details);

            MovieDao movieDao = new MovieDao();
            List<Movie> movies = new ArrayList<Movie>();

            movies = movieDao.getByPropertyEqual("tmdbId", request.getParameter("id"));

            sess.setAttribute("movies", movies);
        %>

    <c:import url="navbarCustom.jsp" />

    <div class="site-section">
        <div class="site-section pb-0">
            <div class="container">
                <div class="row align-items-stretch">
                    <div class="col-md-8" data-aos="fade-up">
                        <img src="https://image.tmdb.org/t/p/w370_and_h556_bestv2//${details.getPosterPath()}" width="1280" height="1920" alt="poster" class="img-fluid">
                    </div>
                    <div class="col-md-3 ml-auto" data-aos="fade-up" data-aos-delay="100">
                        <div class="sticky-content">
                            <h3 class="h3">${details.getTagline()}</h3>
                            <h4 class="h4">Release Date: ${details.getReleaseDate()}</h4>

                                <c:forEach items="${movies}" var="movies">
                                <p>Your Rating: ${movies.userRating}</p>
                                <br/>
                                    <h4 class="h4 mb-3">Your Review: ${movies.personalReview}</h4>
                                <br/>
                                    <div>
                                    <a class="btn btn-outline-warning" href="#" role="button">Edit Review?</a>
                                    <br/>
                                    </div>
                                    <a class="btn btn-outline-danger" href="#" role="button">Delete this Movie?</a>
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </div>
        </div>


</main>

<c:import url="footer.jsp"/>

