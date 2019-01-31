<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Success</title>
        <link rel="stylesheet" href="CSS/thanks.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <c:import url="/Header.jsp"/>
    </head>
    <body class="container">
        
    <center><div class="welcome">
            <table class="tab"><br><br><br><br><br><br>
                <tr><th><center><h1 class="tab">Hello ${user.firstName} ${user.lastName}</h1></center></th></tr>
        <tr><th><br><center><h2 class="tab">Please, confirm your email address and then <br> login to your account</h2><br></center></th></tr>
                <tr><th><br>
                <center><h2 class="tab"><label>Your email: </label>  ${user.email}<br></h2></center></th></tr></table>
                <br><center><a class="btn btn-success btn-lg" href="Main.jsp" role="button">Login</a><br><br></center>
                <br><br><br><br>
        </div></center>
        <c:import url="/Footer.jsp"/>
</body>
</html>
<!--<div class="overlay">
    </div>-->