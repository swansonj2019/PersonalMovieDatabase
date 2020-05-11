<%@ page import="org.apache.logging.log4j.Logger" %>
<%@ page import="org.apache.logging.log4j.LogManager" %>

<%

    String login = null;
    String tagText = null;
    String addUser = null;
    String addUserTxt = null;
    String myMovies = null;
    String myMoviesText = null;
    String logout = null;
    String logoutText = null;

    if (request.getRemoteUser() == null) {
        login = "loginLanding.jsp";
        tagText = "Login";
        addUser = "addUser.jsp";
        addUserTxt = "Sign Up";
        myMovies = "#";
        myMoviesText = "";
        logout = "#";
        logoutText = "";

    } else {
        login = "#";
        tagText = "";
        myMovies = "myMovies.jsp";
        myMoviesText = "My Movies";
        logout = "logout.jsp";
        logoutText = "Logout";
    }

    request.setAttribute("login", login);
    request.setAttribute("text", tagText);
    request.setAttribute("addUser", addUser);
    request.setAttribute("addUserTxt", addUserTxt);
    request.setAttribute("myMovies", myMovies);
    request.setAttribute("myMoviesText", myMoviesText);
    request.setAttribute("logout", logout);
    request.setAttribute("logoutText", logoutText);

%>


<div class="row mb-5 align-items-center">
    <div class="col-md-12 col-lg-6 mb-4 mb-lg-0" data-aos="fade-up">
        <h2>Welcome to the Personal Movie Database</h2>
        <p class="mb-0">Rate and Track your favorite Movies and TV Shows!</p>
    </div>
    <div class="col-md-12 col-lg-6 text-left text-lg-right">
        <a href="index.jsp">Home</a>
        <a href="${login}">${text}</a>
        <a href="${addUser}">${addUserTxt}</a>
        <a href="search.jsp">Search for Movies</a>
        <a href="${myMovies}">${myMoviesText}</a>
        <a href="${logout}">${logoutText}</a>
    </div>
</div>