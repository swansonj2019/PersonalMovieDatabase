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

<c:forEach items="${searchResults}" var="searchResults">
    <div class="card mb-3 mx-auto" style="width: 50rem; height: 25rem;">
        <c:set var="Id" value="${searchResults.getId()}" scope="session" />
        <div class="row no-gutters">
            <div class="col-md-4">
            <img src=https://image.tmdb.org/t/p/w370_and_h556_bestv2///${searchResults.getPosterPath()} class="card-img" alt="Not Found" onerror=this.src="img/not_available.jpg">
            </div>
            <div class="col-md-8">
                <div class="card-body">
                    <div class="text-center">
                        <h3 class="card-title">${searchResults.getTitle()}</h3>
                        <p class="card-text">${searchResults.getOverview()}</p>
                    </div>
                    <div class="text-center">
                        <br/>
                        <p class="card-text">Release Date: ${searchResults.getReleaseDate()}</p>
                        <a href="detailResults.jsp" class="btn btn-primary">Get Movie Details</a>
                    </div>

                </div>
            </div>
        </div>
        </form>
    </div>
</c:forEach>

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










<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<c:set var="title" value="Search Results" />--%>
<%--<html>--%>
<%--<head>--%>
<%--    <!-- Required meta tags -->--%>
<%--    <meta charset="utf-8">--%>
<%--    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">--%>

<%--    <!-- Bootstrap CSS -->--%>
<%--    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">--%>
<%--</head>--%>
<%--<body>--%>

<%--<c:forEach items="${searchResults}" var="searchResults">--%>
<%--<br/>--%>
<%--<div class="card text-center mx-auto" style="width: 35rem;">--%>
<%--    <div class="card-header">--%>
<%--    </div>--%>
<%--    <div class="card-body">--%>
<%--        <img src=https://image.tmdb.org/t/p/w370_and_h556_bestv2///${searchResults.getPosterPath()} height="300" width="200">--%>
<%--        <br/>--%>
<%--        <h5 class="card-title">${searchResults.getTitle()}</h5>--%>
<%--        <p class="card-text">${searchResults.getOverview()}</p>--%>
<%--        <h6 class="card-title">Release Date: ${searchResults.getReleaseDate()}</h6>--%>
<%--        <a href="#" class="btn btn-primary">Get Movie Details</a>--%>
<%--    </div>--%>
<%--    <div class="card-footer text-muted">--%>
<%--    </div>--%>
<%--</div>--%>
<%--<br/>--%>
<%--</c:forEach>--%>

<%--<!-- Optional JavaScript -->--%>
<%--<!-- jQuery first, then Popper.js, then Bootstrap JS -->--%>
<%--<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>--%>
<%--<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>--%>
<%--<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>--%>
<%--</body>--%>
<%--</html>--%>

