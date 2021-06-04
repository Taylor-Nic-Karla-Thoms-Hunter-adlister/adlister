<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Sales Form" />
    </jsp:include>
</head>

<body>

<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">
    <h5>Welcome, ${sessionScope.user.username}!</h5>
    <form action="${pageContext.request.contextPath}/sellform" method="POST">
        <div class="form-group">
            <label for="title">Title</label>
            <input id="title" name="title" class="form-control" type="text">
        </div>
        <div class="form-group">
            <label for="description">Link an image</label>
            <input id="description" name="description" class="form-control" type="text">
        </div>
        <div class="form-group">
            <label for="brand">Brand</label>
            <input id="brand" name="brand" class="form-control" type="text">
        </div>
        <div class="form-group">
            <label for="type">Link an image</label>
            <input id="type" name="type" class="form-control" type="text">
        </div>
        <div class="form-group">
            <label for="speed">Bike Speed</label>
            <input id="Speed" name="speed" class="form-control" type="text">
        </div>
        <div class="form-group">
            <label for="price">Price</label>
            <input id="price" name="price" class="form-control" type="text">
        </div>
        <div class="form-group">
            <label for="image">Link an image</label>
            <input id="image" name="image" class="form-control" type="text">
        </div>
        <input type="submit" class="btn btn-primary btn-block" value="Submit">
    </form>
</div>

</body>
</html>
