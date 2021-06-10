<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
    <link rel="stylesheet" href="./.././css/navbarUnrestricted.css">
    <link rel="stylesheet" href="./.././css/profile.css">
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar-after.jsp" />

    <div class="container vh-100 mt-5">
    <div class="profile-card ">
        <img src="https://fer-uig.glitch.me">
        <h3>${sessionScope.user.username}</h3>
        <h5 class="email">${sessionScope.user.email}</h5>
    </div>
    </div>

</body>
</html>
