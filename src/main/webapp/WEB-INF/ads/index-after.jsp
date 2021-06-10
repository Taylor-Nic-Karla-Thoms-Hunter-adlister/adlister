<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar-after.jsp" />

<form id="searchBar" class="d-flex">
    <input id="searchInput" class="form-control" type="search" placeholder="Search" aria-label="Search">
    <button id="search-button" class="btn btn-success" type="submit">Search</button>
</form>

<div class="container">
    <%--    UnRESTRICTED VIEW W/ JS CLICK EVENT FOR MODAL     --%>
    <main class="genre-card-holder">
        <div class="genre-card row g-0 scrolling-wrapper">
            <c:forEach var="ad" items="${ads}">
                <div class="col-5 my-3 p-0 w-auto card m-1">
                    <p class="text-center">${ad.title}</p>
                    <a id="${ad.title}" class="image card-image" href="/ads/more_info?${ad.id}">
                        <img id="${ad.title}" class="imgMovie position-relative" src="https://fer-uig.glitch.me"/>
                    </a>
                </div>
            </c:forEach>
        </div>
    </main>
</div>

</body>
</html>
