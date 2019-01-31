<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<<html lang="en">
    <head>
        <style>
            body{
                background-image: url("Images/admission-2974645_1280.jpg");
                background-size: cover;
                background-repeat: no-repeat;
            }
        </style>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Welcome</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="style.css">
        <c:import url="Header.jsp"/>
    </head>
    <body>

        <div class="container">
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                </ol>

                <!-- Wrapper for slides -->
                <a href="MovieCarousel.jsp"></a>
                <div class="carousel-inner">
                    <div class="item active">
                        <img src="Images/scarfaceScene.jpg" alt="scarfaceScene" style="width: 100%"/>
                        <div class="carousel-caption">
                            <h3>Scareface</h3>
                            <p><a href="Index.jsp" class="btn btn-primary btn-sm">Enter</a></p>
                        </div>
                    </div>

                    <div class="item">
                        <img src="Images/BloodinbloodoutScene.jpeg" alt="BloodinbloodoutScene" style="width: 100%"/>
                        <div class="carousel-caption">
                            <h3>Blood in Blood Out</h3>
                            <p><a href="Index.jsp" class="btn btn-primary btn-sm">Enter</a></p>
                        </div>
                    </div>

                    <div class="item">
                        <img src="Images/toy-story-20th-anniversary.jpg" alt="toy-story-20th-anniversary" style="width: 100%"/>
                        <div class="carousel-caption">
                            <h3>Toys Story</h3>
                            <p><a href="Index.jsp" class="btn btn-primary btn-sm">Enter</a></p>
                        </div>
                    </div>
                </div>

                <!-- Left and right controls -->
                <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
        <c:import url="/Footer.jsp"/>
    </body>
</html>
