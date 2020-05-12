<%@ page import="com.personalmoviedb.persistence.MovieDao" %>
<%@ page import="com.personalmoviedb.entity.Movie" %>
<%@ page import="org.apache.logging.log4j.Logger" %>
<%@ page import="org.apache.logging.log4j.LogManager" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="com.personalmoviedb.persistence.UserDao" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<c:import url="doctype_header.jsp"/>

<c:import url="nav_body.jsp" />

<div class="container">

    <c:import url="navbar.jsp" />

            <%

                String title = request.getParameter("title");

            %>

            <div class="card mx-auto" style="width: 35rem;">
                <br/>
                <h2 class="text-center">${title} has been added!</h2>
                <br/>
                <div class="mx-auto">
                    <img src="img/check.png" height="200" width="200">
                </div>
                <a class="text-center" href="index.jsp">Take Me Home</a>
                <br/>
            </div>

<c:import url="footer.jsp"/>