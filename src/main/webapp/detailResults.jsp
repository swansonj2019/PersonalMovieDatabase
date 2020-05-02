<%@ page import="com.personalmoviedb.persistence.MovieDetailsDao" %>
<%@ page import="com.personalmoviedb.entity.MovieDetails" %>
<%@ page import="org.apache.logging.log4j.LogManager" %>
<%@ page import="org.apache.logging.log4j.Logger" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Personal Movie DB</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicons -->
    <link href="img/favicon.png" rel="icon">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Inconsolata:400,700|Raleway:400,700&display=swap"
          rel="stylesheet">

    <!-- Bootstrap CSS File -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="vendor/icofont/icofont.min.css" rel="stylesheet">
    <link href="vendor/line-awesome/css/line-awesome.min.css" rel="stylesheet">
    <link href="vendor/aos/aos.css" rel="stylesheet">
    <link href="vendor/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="css/style.css" rel="stylesheet">
</head>

<body>

<nav class="navbar navbar-light custom-navbar">
    <div class="container">
        <a class="navbar-brand" href="index.jsp">Personal Movie DB</a>
    </div>
</nav>

<main id="main">

    <div class="site-section site-portfolio">
        <div class="container">
            <div class="row mb-5 align-items-center">
                <div class="col-md-12 col-lg-6 mb-4 mb-lg-0" data-aos="fade-up">
                    <h2>Welcome to the Personal Movie Database</h2>
                    <p class="mb-0">Rate and Track your favorite Movies and TV Shows!</p>
                </div>
                <div class="col-md-12 col-lg-6 text-left text-lg-right">
                    <a href="login.jsp">Login</a>
                    <a href="#">Sign up</a>
                    <a href="search.jsp">Search for Movies</a>
                    <a href="#">About</a>
                </div>
            </div>
        </div>
    </div>

        <%

            HttpSession sess = request.getSession();

            MovieDetailsDao dao = new MovieDetailsDao();

            MovieDetails details = dao.getDetails(request.getParameter("Id"));

            sess.setAttribute("details", details);


        %>

    <div class="container">

    </div>
    <div class="card bg-light mb-3 mx-auto" style="max-width: 60rem;">
        <div class="card-header">
            <h1 class="text-center">${details.getTitle()}</h1>
        </div>
        <div class="card-body text-center">
            <div class="row text-center">
                <div class="col-sm">
                    <img src="https://image.tmdb.org/t/p/w370_and_h556_bestv2//${details.getPosterPath()}" alt="Poster" />
                    <img src="https://image.tmdb.org/t/p/w370_and_h556_bestv2//${details.getBackdropPath()}" alt="Poster" />
                </div>
            </div>
            <div class="row">
                <div class="col-sm">
                    <br/>
                    <h5 class="card-title">${details.getTagline()}</h5>
                    <p class="card-text">${details.getOverview()}</p>
<%--                    <p class="card-text">${details.getVideos()}</p>--%>
                </div>
            </div>
        </div>
    </div>

    <br/>
    <br/>

    <div class="card mb-3 mx-auto" style="max-width: 60rem;">
        <div class="card-header">
            <h1 class="text-center">Rate and Add this Movie?</h1>
        </div>
        <div class="card-body text-center">
            <form>
                <div class="form-group">
                    <label for="exampleFormControlSelect1">Give this Movie a Rating</label>
                    <select class="form-control" id="exampleFormControlSelect1">
                        <option>1 - Total Stinker!</option>
                        <option>2 - Mostly Awful</option>
                        <option>3 - Pretty Bad</option>
                        <option>4 - Poor</option>
                        <option>5 - Just Meh</option>
                        <option>6 - Not Bad</option>
                        <option>7 - It Was Okay</option>
                        <option>8 - It was Decent</option>
                        <option>9 - I loved It</option>
                        <option>10 - Possibly the best Movie Ever</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlTextarea1">How did you feel about this Movie?</label>
                    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
                </div>
                <button type="submit" class="btn btn-primary">Rate and Add</button>
            </form>
        </div>
    </div>
    </div>
    </div>

    </div>
<%--        <div class="card mb-3 mx-auto" style="width: 50rem; height: 25rem;">--%>
<%--            <h2><% out.println("The Movie ID Is: " + request.getParameter("Id"));%></h2>--%>


<%--        <h2>${details.getTagline()}</h2><br/>--%>
<%--        <h2>${details.getOverview()}</h2><br/>--%>
<%--        <h2>${details.getHomepage()}</h2><br/>--%>
<%--            <img src="https://image.tmdb.org/t/p/w370_and_h556_bestv2//${details.getPosterPath()}" alt="Poster" />--%>


<%--        </div>--%>

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