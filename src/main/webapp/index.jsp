<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="San Antonio Bike Exchange" />
    </jsp:include>
    <link rel="stylesheet" href="./css/navbarRestricted.css">
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <form id="searchBar" class="d-flex">
        <input id="searchInput" class="form-control" type="search" placeholder="Search" aria-label="Search">
        <button id="search-button" class="btn btn-success" type="submit">Search</button>
    </form>

    <div class="container">
        <h1>San Antonio Bike Exchange</h1>
    </div>
</body>
</html>
