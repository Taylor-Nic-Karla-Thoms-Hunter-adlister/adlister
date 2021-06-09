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

        .userAds {
            list-style: none;
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
    <div class="container">
        <h1>Here are all your ads!</h1>
        <c:if test="${sessionScope.user.id}) == ${ad_id}">
        <c:forEach var="ad" items="${ads}">
            <div class="col-md-6">
                <h2>${ad.title}</h2>
                <p>${ad.description}</p>
                <ul class="userAds">
                    <li>${ad.brand}</li>
                    <li>${ad.bike_type}</li>
                    <li>${ad.size}</li>
                    <li>${ad.speed}</li></ul>
                <h4>${ad.initial_price}</h4>
                <p><img src="${ad.image}" alt="bike photo" width="50" height="50"></p>
            </div>
        </c:forEach>
        </c:if>
    </div>

</body>
</html>
