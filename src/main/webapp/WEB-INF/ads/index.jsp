<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<%--  PARTIALS  --%>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads"/>
    </jsp:include>

<%--  CUSTOM CSS & JS  --%>
    <link rel="stylesheet" href="./css/adlisting.css">
    <script src="js/restrictedListingView.js"></script>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>

<%--   SEARCH BAR   --%>
<form id="searchBar" class="d-flex">
    <input id="searchInput" class="form-control" type="search" placeholder="Search" aria-label="Search">
    <button id="search-button" class="btn btn-success" type="submit">Search</button>
</form>
<%--    RESTRICTED VIEW W/ JS CLICK EVENT FOR MODAL     --%>
    <main class="genre-card-holder">
            <div class="genre-card row g-0 scrolling-wrapper">
                <c:forEach var="ad" items="${ads}">
                    <div class="col-5 my-3 p-0 w-auto card m-1">
                        <p class="text-center">${ad.title}</p>
                        <a id="${ad.id}" class="image card-image" href="#" data-toggle="modal" data-target="#exampleModal">
                            <img id="${ad.title}" class="imgMovie position-relative" src="https://fer-uig.glitch.me"/>
                        </a>
                    </div>
                </c:forEach>
            </div>
    </main>

<%--  MODAL TO REDIRECT TO REGISTER OR LOGIN FOR MORE CONTENT FROM AD  --%>
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Become a member today!</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                As a member you will gain access to ad content, either <strong>log in</strong> or <em>register now</em>!
            </div>
            <div class="modal-footer">
                <button id="loginRedirect" type="button" class="btn btn-secondary"><a href="/login">login</a></button>
                <button id="registerRedirect" type="button" class="btn btn-primary"><a href="/register">register</a></button>
            </div>
        </div>
    </div>
</div>
</body>
</html>
