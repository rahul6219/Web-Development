<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Checkout</title>
        <link rel="stylesheet" href="CSS/checkout.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body class="container">
        <c:import url="/Header.jsp"/>
        <br><div class="bb">
    <center><h1 class="txt">Hello ${user.firstName} ${user.lastName}</h1>
        <h2 class="txt">Please enter your payment information<br>
            and shipping information</h2></center>
        </div><hr><br><br>
        <div class="col-xs-6">
            <form class="form-horizontal" action="EndServlet" method="POST">
                <input type="hidden" name="formtype" value="conformation"/>
                <div class="form-group">
                    <label class="control-label col-sm-2 txt" for="creditCard">Credit Card:</label>
                    <div class="col-sm-10">
                        <input type="password" class="form-control" placeholder="Please enter Credit Card" name="creditCard" required/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2 txt" for="expirationDate">Expiration Date: </label>
                    <div class="col-sm-10">
                        <input type="date" class="form-control" placeholder="Please enter Expiration Date" name="expirationDate" required/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2 txt" for="streetAdress">Street Address:</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" placeholder="Please enter Street Address" name="streetAdress" required/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2 txt" for="city">City:</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" placeholder="Please enter City" name="city" required/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2 txt" for="zipCode">Zip Code:</label>
                    <div class="col-sm-10">
                        <input type="number" class="form-control" placeholder="Please enter Zip Code" name="zipCode" required/>
                    </div>
                </div>
                <br><br>
                <div class="col-sm-offset-2 col-sm-10">
                <input type="submit" class="btn btn-success" value="Confirm"/>
                </div>
                </form></div><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        
<%--<c:import url="/Footer.jsp"/>--%>
</body>
<c:import url="/Footer.jsp"/>
</html>