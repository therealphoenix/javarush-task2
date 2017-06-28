<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>${param.title}</title>
    <script src="//code.jquery.com/jquery-2.2.0.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
    <style>
        html,
        body {
            overflow-x: hidden;
        }
        body {
            padding-top: 70px;
        }
        footer {
            padding: 30px 0;
        }
        @media screen and (max-width: 767px) {
            .row-offcanvas {
                position: relative;
                -webkit-transition: all .25s ease-out;
                -o-transition: all .25s ease-out;
                transition: all .25s ease-out;
            }
            .row-offcanvas-right {
                right: 0;
            }
            .row-offcanvas-left {
                left: 0;
            }
            .row-offcanvas-right
            .sidebar-offcanvas {
                right: -50%; /* 6 columns */
            }
            .row-offcanvas-left
            .sidebar-offcanvas {
                left: -50%; /* 6 columns */
            }
            .row-offcanvas-right.active {
                right: 50%; /* 6 columns */
            }
            .row-offcanvas-left.active {
                left: 50%; /* 6 columns */
            }
            .sidebar-offcanvas {
                position: absolute;
                top: 0;
                width: 50%; /* 6 columns */
            }
        }
    </style>
</head>
<body role="document">

<c:url var="post_url"  value="/user/add" />
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-collapse collapse">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-header navbar-brand" href="${pageContext.request.contextPath}/">TAT Library </a>
            <ul class="nav navbar-nav navbar-right">
            					<c:url var="post_url"  value="/user/add" />
                     <li><form id="command" role="form" class="navbar-form" action="<c:url value='/' />" method="post">
                        <div class="form-group">
                            <input type="text" placeholder="Email" class="form-control" name="username">
                        </div>
                        <div class="form-group">
                            <input type="password" placeholder="Password" class="form-control" name="password">
                        </div>
                        <button type="submit" class="btn btn-success">
                            <span class="glyphicon glyphicon-log-in" aria-hidden="true"></span>
                        </button>
                    <div>
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
</div></form></li> 
            </ul>
        </div>
       </div>
</nav>
${param.body}
</body>
</html>