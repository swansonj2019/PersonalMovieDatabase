
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


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
    <link href="img/apple-touch-icon.png" rel="apple-touch-icon">

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
                <div class="col-md-12 col-lg-6 text-left text-lg-right" data-aos="fade-up" data-aos-delay="100">
                    <div id="filters" class="filters">
                        <a href="login.jsp">Login</a>
                        <a href="#">Sign up</a>
                        <a href="#">About</a>
                    </div>
                </div>
            </div>
            <br/>
            <br/>

            <%
                HttpSession sess = request.getSession();
                String username = request.getParameter("username");
                sess.setAttribute("username", username);
            %>

            <div class="card mx-auto" style="width: 35rem;">

                <!-- Default form login -->
                <form class="text-center border border-light p-5" action="searchMovies">

                    <p class="h4 mb-4">Enter Movie Title to Search</p>
                    <input type="text" class="form-control" id="searchTerm" name="searchTerm" aria-describedby="searchTermHelp" placeholder="Movie Title">
                    <br/>
                    <button type="submit" name="submit" value="search" class="btn btn-primary">Search</button>

                </form>
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







<%--<!doctype html>--%>
<%--<html lang="en">--%>
<%--<head>--%>
<%--    <!-- Required meta tags -->--%>
<%--    <meta charset="utf-8">--%>
<%--    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">--%>

<%--    <!-- Bootstrap CSS -->--%>
<%--    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">--%>

<%--    <title>Search</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<div class="text-center">--%>
<%--    <div class="container">--%>
<%--        <h2>Search All or Search by Username</h2>--%>
<%--        <form action="searchUser" class="form-inline">--%>
<%--            <div class="form-group">--%>
<%--                <label for="searchTerm">Search</label>--%>
<%--                <input type="text" class="form-control" id="searchTerm" name="searchTerm" aria-describedby="searchTermHelp" placeholder="Username">--%>
<%--            </div>--%>
<%--            <button type="submit" name="submit" value="search" class="btn btn-primary">Search</button>--%>
<%--            <button type="submit" name="submit" value="viewAll" class="btn btn-primary">View all users</button>--%>
<%--        </form>--%>
<%--    </div>--%>
<%--</div>--%>

<%--<!-- Optional JavaScript -->--%>
<%--<!-- jQuery first, then Popper.js, then Bootstrap JS -->--%>
<%--<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>--%>
<%--<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>--%>
<%--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>--%>
<%--</body>--%>
<%--</html>--%>



