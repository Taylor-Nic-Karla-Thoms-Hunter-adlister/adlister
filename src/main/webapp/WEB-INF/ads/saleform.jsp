<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Sales Form" />
    </jsp:include>

    <!-- FileStack API -->
    <script src="//static.filestackapi.com/filestack-js/3.x.x/filestack.min.js"></script>

    <script type="text/javascript" src="${pageContext.request.contextPath}../../js/keys.js"></script>

    <script>
        function myFunction() {
            console.log("I was clicked");

            const client = filestack.init(FileStackAPI);
            const options = {
                accept: ["image/*"],
                onUploadDone: (res) => {
                    console.log(res);
                    let handle = "https://www.filestackapi.com/api/file/" + res.filesUploaded[0].handle;

                    if (handle !== null || handle !== "") {
                        $('.fa-check').toggleClass('hidden', 'visible');
                    }

                    document.getElementById('hidden').value = handle;
                }

            };

            client.picker(options).open();
        }
    </script>
    <link rel="stylesheet" href="./css/navbarUnrestricted.css">

</head>

<body>

<jsp:include page="/WEB-INF/partials/navbar-after.jsp" />

<div class="container">
    <h5>Welcome, ${sessionScope.user.username}!</h5>
    <form action="${pageContext.request.contextPath}/create" method="POST">
        <div class="form-group">
            <label for="title">Title</label>
            <input id="title" name="title" class="form-control" type="text">
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
            <input id="price" name="price" class="form-control" type="text">
        </div>
        <div class="form-group">
            <label for="size">Size</label>
            <input id="size" name="size" class="form-control" type="text">
        </div>
        <div class="form-group mt-2">
            <label for="bikeImage">Picture: (optional)</label>
            <button id="bikeImage" type="button" class="btn btn-success" onclick="myFunction()">Upload</button>
            <span><i class="fa fa-check hidden" style="color:green"></i></span>
        </div>
        <input type="submit" class="btn btn-info btn-block" value="Submit">
        <input id="hidden" name="hidden" class="form-control" type="hidden" value="">
    </form>
</div>

</body>
</html>
