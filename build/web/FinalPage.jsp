<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Complete</title>
        <link rel="stylesheet" href="CSS/finalPage.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
         <c:import url="/Header.jsp"/>
    </head>
    <body class="container bg">

    <center><div class="overlay"><div class="welcome">
                <table class="tab"><br><br><br>
                    <tr><th><center><h1 class="tab">Hello ${user.firstName} ${user.lastName}</h1></center></th></tr>
                    <tr><th><center><h2 class="tab">Thank You for placing your order with movie central<br>
                            Your order has been placed and will be filled as soon as possible:<br> 
                            The average wait time for this order will be 3-5 business days.</h2></center></th></tr>
                <tr><th><br>
                <center><h2 class="tab">Your order number is:&nbsp;<%= (int) (Math.random() * 500000000)%><br>
                                        Your tracking code is:&nbsp;<%= (int) (Math.random() * 9000000)+87464%><br></h2></center></th></tr></table>
            </div></div></center>
            <c:import url="/Footer.jsp"/>
</body>
</html>
