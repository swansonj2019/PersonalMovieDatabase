<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="title" value="Search Results" />
<html>
<head>
    <style>
        table {
            font-family: arial, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }
        td, th {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }
        tr:nth-child(even) {
            background-color: #dddddd;
        }
    </style>
</head>
<body>

<div class="container-fluid">
    <h2>Search Results: </h2>
    <table class="table">

        <tr>
            <th>User Id</th>
            <th>Username</th>
        </tr>
        <c:forEach items="${users}" var="user">
        <tr>
            <td>${user.id}</td>
            <td>${user.userName}</td>
        </tr>
        </c:forEach>


<%--    <table id="userTable" class="display" cellspacing="0" width="100%">--%>
<%--        <thead>--%>
<%--        <th>User ID</th>--%>
<%--        <th>User Name</th>--%>
<%--        </thead>--%>
<%--        <tbody>--%>
<%--        <c:forEach var="user" items="${users}">--%>
<%--            <tr>--%>
<%--                <td>${user.id} ${user.userName}</td>--%>
<%--            </tr>--%>
<%--        </c:forEach>--%>
<%--        </tbody>--%>
<%--    </table>--%>
</div>

</body>
</html>