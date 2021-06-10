<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>



    <style>

        body {
            background-color: salmon;

        }

        .header {
            text-align: center;
        }

        .profile-card {
            box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
            max-width: 300px;
            margin: auto;
            text-align: center;
            border: solid black 1px;
            background-color: teal;

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
        <h1 class="header">Your Profile </h1>
    </div>
    <br>

    <div class="profile-card">
        <img src="https://fer-uig.glitch.me" style="width: 100%">
        <h1>${sessionScope.user.username} </h1>
        <h4>Email</h4>
        <p class="email">${sessionScope.user.email}</p>
    </div>
    <h2>
        <a href="/create">Create New Listing</a>

        <a href="/access">List All Ads</a>

        <a href="/user-ads">View Your Ads</a>

    </h2>

</body>
</html>
