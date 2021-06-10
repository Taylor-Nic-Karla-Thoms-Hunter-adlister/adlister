<%--@elvariable id="owner" type="com.codeup.adlister.models.User"--%>
<%--
  Created by IntelliJ IDEA.
  User: alex
  Date: 6/10/21
  Time: 12:58 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.getAttribute("ad");
    request.getAttribute("owner");
%>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads"/>
    </jsp:include>
    <style>
        a {
            color: black;
        }
    </style>
</head>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar-after.jsp"/>

<form id="searchBar" class="d-flex">
    <input id="searchInput" class="form-control" type="search" placeholder="Search" aria-label="Search">
    <button id="search-button" class="btn btn-info" type="submit">Search</button>
</form>

<div class="container">
    <main>
        <h3 class="text-center">${ad.title}</h3>
        <div class="text-center">
            <img src="${ad.image}" alt="image of item">
        </div>
        <div class="row justify-content-around">
            <h5 class="col-4 text-center">$${ad.price}</h5>
            <p class="col-8 text-center">${ad.description}</p>
        </div>
        <ul class="row justify-content-around list-unstyled">
            <li class="col-3 text-center"><em>Brand</em></li>
            <li class="col-3 text-center"><em>Type</em></li>
            <li class="col-3 text-center"><em>Gears</em></li>
            <li class="col-3 text-center"><em>Size</em></li>
        </ul>
        <ul class="row justify-content-around list-unstyled">
            <li class="col-3 text-center">${ad.brand}</li>
            <li class="col-3 text-center">${ad.type}</li>
            <li class="col-3 text-center">${ad.speed}</li>
            <li class="col-3 text-center">${ad.size}</li>
        </ul>
    </main>
    <hr>
    <article class="row align-items-center align-content-center">
        <div class="col-4">
            <%--                       <img class="user-pic" src="{owner.image}" alt="owner of ad image">--%>
            <img class="owner-pic d-block" src="https://fer-uig.glitch.me" alt="user-icon">
        </div>
        <div class="col-4 text-center">
            <button type="button" class="btn btn-primary"><a href="mailto:${owner.email}?subject=${ad.title}" target="_top">Make Offer</a></button>
        </div>
        <div class="col-4 text-center">
            <form class="my-auto" action="/access" method="POST">
                <input type="hidden" name="owner" class="btn btn-warning" value="${owner.id}">
                <input type="submit" name="more" class="btn btn-warning" value="More Posts">
            </form>
        </div>
    </article>
</div>

</body>
</html>
