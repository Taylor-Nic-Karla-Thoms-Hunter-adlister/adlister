<%--
  Created by IntelliJ IDEA.
  User: karlajara
  Date: 6/7/21
  Time: 1:42 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Sales Form" />
    </jsp:include>
</head>
<body>

<jsp:include page="/WEB-INF/partials/navbar-after.jsp" />

<div class="container">
    <h5>Welcome, ${sessionScope.user.username}!</h5>
    <form action="${pageContext.request.contextPath}/update" method="POST">
        <div class="form-group">
            <label for="title">Title</label>
            <input id="title" name="title" class="form-control" type="text" >
        </div>
        <div class="form-group">
            <label for="description">Description</label>
            <input id="description" name="description" class="form-control" type="text">
        </div>
        <div class="form-group">
            <label for="brand">Brand</label>
            <input id="brand" name="brand" class="form-control" type="text">
        </div>
        <div class="form-group">
            <label for="type">Type</label>
            <input id="type" name="type" class="form-control" type="text">
        </div>
        <div class="form-group">
            <label for="speed">Bike Speed</label>
            <input id="speed" name="speed" class="form-control" type="text">
        </div>
        <div class="form-group">
            <label for="price">Price</label>
            <input id="price" name="price" class="form-control" type="number">
        </div>
        <div class="form-group">
            <label for="image">Link Picture of Bike</label>
            <input id="image" name="image" class="form-control" type="file">
        </div>
        <div class="form-group">
            <label for="size">Size</label>
            <input id="size" name="size" class="form-control" type="text">
        </div>
        <input type="submit" class="btn btn-warning btn-block" value="Update">
    </form>
</div>

</body>
</html>

