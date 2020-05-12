<%@ page import="com.personalmoviedb.persistence.MovieDao" %>
<%@ page import="com.personalmoviedb.entity.Movie" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<c:import url="doctype_header.jsp"/>

<c:import url="nav_body.jsp" />

<div class="container">

    <c:import url="navbar.jsp" />

            <%
                HttpSession sess = request.getSession();

                MovieDao dao = new MovieDao();
                List<Movie> movies = new ArrayList<Movie>();

                movies = dao.getByPropertyEqual("username", request.getRemoteUser());

                sess.setAttribute("movies", movies);

                sess.setAttribute("username", request.getRemoteUser());
            %>

                <h1 class="card-title mx-auto">${username}'s Movies</h1>
                <div id="portfolio-grid" class="row no-gutter" data-aos="fade-up" data-aos-delay="200">
                    <c:forEach items="${movies}" var="movies">

                        <div class="item web col-sm-6 col-md-4 col-lg-4 mb-4">
                            <a href="singleMovie.jsp?id=${movies.tmdbId}&title=${movies.title}$userId=${movies.id}" class="item-wrap fancybox">
                                <div class="work-info">
                                    <h3>${movies.title}</h3>
                                </div>
                                <img class="img-fluid" src="${movies.posterFile}">
                            </a>
                        </div>

                    </c:forEach>
                </div>
        </div>
    </div>

    <div class="site-section">
        <div class="container">
            <div class="row justify-content-center text-center mb-4">
                <div class="col-5">
                    <h3 class="h3 heading">Site Services</h3>
                    <p>What can I do with Personal Movie DB?</p>
                </div>
            </div>
            <div class="row">

                <div class="col-12 col-sm-6 col-md-6 col-lg-3">
                    <span class="la la-film la-3x mb-4"></span>
                    <h4 class="h4 mb-2">Search Movies</h4>
                    <p>Find your absolute favorites or get all the details on new releases.</p>
                    <ul class="list-unstyled list-line">
                        <li>Find any Movie with a simple text search</li>
                        <li>Get a list of movies matching your search</li>
                        <li>Get all the details you could ever want</li>
                    </ul>
                </div>
                <div class="col-12 col-sm-6 col-md-6 col-lg-3">
                    <span class="la la-server la-3x mb-4"></span>
                    <h4 class="h4 mb-2">Rate and Track your Movies</h4>
                    <p>Can't remember if you seen it?  Want to remember how you felt about it? We have you covered.</p>
                    <ul class="list-unstyled list-line">
                        <li>Mark films as viewed and store them in your own database</li>
                        <li>Rate any film you store for later review</li>
                        <li>Get a searchable database of your stored movies</li>
                    </ul>
                </div>
                <div class="col-12 col-sm-6 col-md-6 col-lg-3">
                    <span class="la la-tv la-3x mb-4"></span>
                    <h4 class="h4 mb-2">Search Television Shows</h4>
                    <p>Search Television shows and seasons</p>
                    <ul class="list-unstyled list-line">
                        <li>Available in Future Releases!</li>
                    </ul>
                </div>
                <div class="col-12 col-sm-6 col-md-6 col-lg-3">
                    <span class="la la-compact-disc la-3x mb-4"></span>
                    <h4 class="h4 mb-2">Rate and Store Seasons and Episodes of shows</h4>
                    <p>Store viewed and rated Television shows in your own database</p>
                    <ul class="list-unstyled list-line">
                        <li>Available in Future Releases!</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

</main>
<footer class="footer" role="contentinfo">
    <div class="container">
        <div class="row">
            <div class="col-sm-6">
                <p class="mb-1">&copy; Copyright PersonalMovie DB 2020

            </div>
            <div class="col-sm-6 social text-md-right">
                <img src="img/tmdb.png">
            </div>
        </div>
    </div>
</footer>

<!-- Vendor JS Files -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/jquery/jquery-migrate.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="vendor/easing/easing.min.js"></script>
<script src="vendor/php-email-form/validate.js"></script>
<script src="vendor/isotope/isotope.pkgd.min.js"></script>
<script src="vendor/aos/aos.js"></script>
<script src="vendor/owlcarousel/owl.carousel.min.js"></script>

<!-- Template Main JS File -->
<script src="js/main.js"></script>

</body>

</html>

