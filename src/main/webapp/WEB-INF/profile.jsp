<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>

    <style>
        .profile-card {
            box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
            max-width: 300px;
            margin: auto;
            text-align: center;
        }

        .username {
            color: grey;
            font-size: 18px;
        }

        .email {
            text-decoration: none;
            font-size: 22px;
            color: black;
        }
    </style>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar-after.jsp" />

    <div class="container">
        <h1>Welcome, ${sessionScope.user.username}!</h1>
    </div>

    <div class="profile-card">
        <img src="https://fer-uig.glitch.me" style="width: 100%">
        <h1>${sessionScope.user.username} </h1>
        <p class="username">Username</p>
        <p class="email">Email</p>
    </div>

</body>
</html>
