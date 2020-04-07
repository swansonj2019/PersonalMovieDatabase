<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.personalmoviedb.persistence.UserDao" %>
<%@ page import="com.personalmoviedb.entity.User" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>

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
    <style>
        table {
            border-collapse: collapse;
            width: 100%;
        }

        td, th {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
            text-align: center;
        }

        tr:nth-child(even) {
            background-color: #dddddd;
        }
    </style>
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
                    <h2>Welcome to the Personal Movie Database {Admin}</h2>
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

            <div class="card mx-auto" style="width: 35rem;">
                <h1 class="card-title mx-auto">Users</h1>
                <%
                    HttpSession sess =request.getSession();

                    UserDao dao = new UserDao();
                    List<User> users = new ArrayList<User>();

                    users = dao.getAllUsers();

                    sess.setAttribute("users", users);


                %>
                <table id="userTable" class="display" cellspacing="0" width="100%">
                    <thead>
                    <th>ID</th>
                    <th>User Name</th>
                    <th>Password</th>
                    <th>Edit</th>
                    <th>Delete</th>
                    </thead>
                    <tbody>

                <c:forEach items="${users}" var="users">
                <tr>
                    <td>${users.id} ${user.lastName}</td>
                    <td>${users.userName}</td>
                    <td>${users.password}</td>
                    <td><a href="editUser.jsp"><i class="las la-user-edit"></i></a></td>
                    <td><a href="deleteUser.jsp"><i class="las la-user-slash"></i></a></td>
                </tr>
                </c:forEach>
                    </tbody>
                </table>

                <div class="mx-auto">
                    <br/>
                    <a href="addUser.jsp" type="button" class="btn btn-default">Add New User</a>
                    <br/>
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
