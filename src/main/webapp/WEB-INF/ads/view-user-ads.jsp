<%--
  Created by IntelliJ IDEA.
  User: karlajara
  Date: 6/9/21
  Time: 9:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <h1>Here Are all your ads!</h1>

    <c:forEach var="ad" items="${ads}">
        <div class="col-md-6">
            <h2>${ad.title}</h2>
            <p>${ad.description}</p>
            <ul>
                <li>${ad.brand}</li>
                <li>${ad.bike_type}</li>
                <li>${ad.size}</li>
                <li>${ad.speed}</li></ul>
            <h4>${ad.initial_price}</h4>
            <p><img src="${ad.image}" alt="bike photo"></p>
        </div>
    </c:forEach>
</div>

</body>
</html>
