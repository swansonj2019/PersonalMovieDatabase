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

            <div class="card mx-auto" style="width: 35rem;">

                <!-- Default form login -->
                <form class="text-center border border-light p-5" action="newUser">

                    <p class="h4 mb-4">Enter new user details</p>
                    <input type="text" class="form-control" id="username" name="username" aria-describedby="usernameHelp" placeholder="Username">
                    <br/>
                    <input type="password" class="form-control" id="password" name="password" aria-describedby="passwordHelp" placeholder="Password">
                    <button type="submit" name="submit" value="search" class="btn btn-primary">Add</button>

                </form>
            </div>


        </div>
    </div>

<c:import url="footer.jsp"/>