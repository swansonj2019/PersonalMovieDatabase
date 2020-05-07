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
                    <a href="addUser.jsp">Sign up</a>
                    <a href="search.jsp">Search for Movies</a>
                    <a href="myMovies.jsp">My Movies</a>
                    <a href="#">About</a>
                    <a href="logout.jsp">Logout</a>
                </div>
            </div>
            <div id="portfolio-grid" class="row no-gutter" data-aos="fade-up" data-aos-delay="200">
                <div class="item web col-sm-6 col-md-4 col-lg-4 mb-4">
                    <a href="work-single.html" class="item-wrap fancybox">
                        <div class="work-info">
                            <h3>Star Wars: The Last Jedi</h3>
                        </div>
                        <img class="img-fluid" src="img/sw_tlj.jpg">
                    </a>
                </div>
                <div class="item photography col-sm-6 col-md-4 col-lg-4 mb-4">
                    <a href="work-single.html" class="item-wrap fancybox">
                        <div class="work-info">
                            <h3>Joker</h3>
                        </div>
                        <img class="img-fluid" src="img/Joker.jpg">
                    </a>
                </div>
                <div class="item branding col-sm-6 col-md-4 col-lg-4 mb-4">
                    <a href="work-single.html" class="item-wrap fancybox">
                        <div class="work-info">
                            <h3>Ready Player One</h3>
                        </div>
                        <img class="img-fluid" src="img/ready_player_one.jpg">
                    </a>
                </div>
                <div class="item design col-sm-6 col-md-4 col-lg-4 mb-4">
                    <a href="work-single.html" class="item-wrap fancybox">
                        <div class="work-info">
                            <h3>Star Trek</h3>
                            <span>Picard</span>
                        </div>
                        <img class="img-fluid" src="img/st_picard.jpg">
                    </a>
                </div>
                <div class="item photography col-sm-6 col-md-4 col-lg-4 mb-4">
                    <a href="work-single.html" class="item-wrap fancybox">
                        <div class="work-info">
                            <h3>Mr. Robot</h3>
                        </div>
                        <img class="img-fluid" src="img/mr_robot.jpg">
                    </a>
                </div>
                <div class="item branding col-sm-6 col-md-4 col-lg-4 mb-4">
                    <a href="work-single.html" class="item-wrap fancybox">
                        <div class="work-info">
                            <h3>The Simpsons</h3>
                        </div>
                        <img class="img-fluid" src="img/simpsons.jpg">
                    </a>
                </div>
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

