<title>${param.title}</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">

<!-- Load an icon library to show a hamburger menu (bars) on small screens -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>

<%--<!-- FileStack API -->--%>
<%--<script src="//static.filestackapi.com/filestack-js/3.x.x/filestack.min.js"></script>--%>

<%--<script type="text/javascript" src="${pageContext.request.contextPath}/WEB-INF/js/keys.js"></script>--%>

<style>
    body {
        background-color: white;
        font-size: 12px;
    }

    /* -------------------- Nav Feature -------------------- */
    .user-pic {
        width: 24px;
        height: 24px;
        border-radius: 50%;
    }

    .navbar {
        padding: 0;
        background-color: seagreen;
    }

    a.navbar-brand {
        color: white;
    }

    a.nav-link {
        text-decoration: none;
        color: white;
        margin-top: 1em;
        padding: .5em;
    }

    a.nav-link-after {
        text-decoration: none;
        color: white;
        margin-top: 1.25em;
        padding: .5em;
    }

    /* -------------------- Search Feature -------------------- */
    #searchBar {
        border-radius: 0;
        border: 20px solid rgba(0, 0, 0, 0.3);
    }

    #search-button {
        border-radius: 0;
    }

    #searchInput {
        border-radius: 0;
    }

    /* -------------------- Sale Feature -------------------- */
    .hidden {
        visibility: hidden;
    }

    .visible {
        visibility: visible;
    }
</style>