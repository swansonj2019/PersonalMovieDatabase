<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="title" value="Search Results" />
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<body>

<c:forEach items="${searchResults}" var="searchResults">
<br/>
<div class="card text-center mx-auto" style="width: 35rem;">
    <div class="card-header">
    </div>
    <div class="card-body">
        <img src=https://image.tmdb.org/t/p/w370_and_h556_bestv2///${searchResults.getPosterPath()} height="300" width="200">
        <br/>
        <h5 class="card-title">${searchResults.getTitle()}</h5>
        <p class="card-text">${searchResults.getOverview()}</p>
        <h6 class="card-title">Release Date: ${searchResults.getReleaseDate()}</h6>
        <a href="#" class="btn btn-primary">Get Movie Details</a>
    </div>
    <div class="card-footer text-muted">
    </div>
</div>
<br/>
</c:forEach>



<%--            <img src=https://image.tmdb.org/t/p/w370_and_h556_bestv2///${searchResults.getPosterPath()} height="300" width="200">--%>
<%--            ${searchResults.getTitle()}--%>
<%--            ${searchResults.getOverview()}--%>






<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>




<%--    <style>--%>
<%--        table {--%>
<%--            font-family: arial, sans-serif;--%>
<%--            border-collapse: collapse;--%>
<%--            width: 100%;--%>
<%--        }--%>
<%--        td, th {--%>
<%--            border: 1px solid #dddddd;--%>
<%--            text-align: left;--%>
<%--            padding: 8px;--%>
<%--        }--%>
<%--        tr:nth-child(even) {--%>
<%--            background-color: #dddddd;--%>
<%--        }--%>
<%--    </style>--%>



<%--<h2>Search Results: </h2>--%>
<%--<table class="table">--%>

<%--<tr>--%>
<%--    <th>Poster</th>--%>
<%--    <th>Title</th>--%>
<%--    <th>Overview</th>--%>
<%--</tr>--%>
<%--<c:forEach items="${searchResults}" var="searchResults">--%>
<%--    <tr>--%>
<%--        <td><img src=https://image.tmdb.org/t/p/w370_and_h556_bestv2///${searchResults.getPosterPath()} height="300" width="200"></td>--%>
<%--        <td>${searchResults.getTitle()}</td>--%>
<%--        <td>${searchResults.getOverview()}</td>--%>
<%--    </tr>--%>
<%--</c:forEach>--%>