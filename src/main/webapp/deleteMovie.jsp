<%@ page import="com.personalmoviedb.persistence.MovieDao" %>
<%@ page import="com.personalmoviedb.entity.Movie" %>
<%@ page import="org.apache.logging.log4j.Logger" %>
<%@ page import="org.apache.logging.log4j.LogManager" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<c:import url="doctype_header.jsp"/>

<c:import url="nav_body.jsp" />

<div class="container">

    <c:import url="navbar.jsp" />

    <%
        final Logger logger = LogManager.getLogger(this.getClass());
        HttpSession sess = request.getSession();

        MovieDao dao = new MovieDao();
        Movie movie = new Movie();
        List<Movie> movies = new ArrayList<Movie>();

        String title = request.getParameter("title");
        String id = request.getParameter("id");
        String userId = request.getParameter("userId");

        int converted = Integer.parseInt("userId");

        sess.setAttribute("title", title);
        sess.setAttribute("converted", converted);
        logger.info("ID as a string is: " + id);
        logger.info("ID as an int is: " + converted);

        dao.delete(dao.getById(converted));

    %>

    <div class="container">

        <div class="card mx-auto" style="width: 35rem;">
            <br/>
            <h2 class="text-center">You have successfully deleted</h2>
            <h2 class="text-center">${title}</h2>
            <br/>
            <div class="mx-auto">
                <img src="img/check.png" height="200" width="200">
            </div>
            <a class="text-center" href="index.jsp">Take Me Home</a>
            <br/>
        </div>

    </div>

</div>

<c:import url="footer.jsp"/>

