<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar-after.jsp" />

    <div class="container">
        <h1>Welcome, ${sessionScope.user.username}!</h1>
    </div>
    <h2>
        <a href="/create">Create New Listing</a>

        <a href="/access">List All Ads</a>

        <a href="/user-ads">View Your Ads</a>

    </h2>


</body>
</html>
