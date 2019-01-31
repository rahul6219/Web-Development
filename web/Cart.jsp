<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <style>
        body{
            color: whitesmoke;
            background-image:url("Images/DarthVadorPopcorn.jpg");
            background-size: cover;
            
        }
        .bg{


        }
        .table{
            background-color: black;
            opacity: .7;
            filter: alpha(opacity=0);

            border: 2px solid #bf1111;
            border-radius: 8px;
            color: whitesmoke;

        }
        .container{
            color: whitesmoke;
        }
    </style>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <title>Cart</title>
    </head>
    <body class="container">
        <div class="bg">
            <c:import url="/Header.jsp"/>
            <h1>Hello ${user.firstName} ${user.lastName} Your Shopping Cart</h1>

            <table class="table">
                <tr>
                    <th>Title:</th>
                    <th>Price:</th>
                </tr>

                <c:forEach var="iter" items="${servList}">
                    <tr>
                        <td><c:out value="${iter.title}"/></td>
                        <td><c:out value="${iter.price}"/></td>
                        <td>
                            <form action="MainServlet" method="GET">
                                <input type="hidden" name="title" value="${iter.title}"/>
                                <input type="hidden" name ="formtype" value="delete"/>
                                <input type="submit" class="btn btn-default" value="Delete"/>
                            </form>
                        </td>
                    </tr>
                </c:forEach>

            </table>

            <br><br><br><br>
            <hr>
            <form action="CartServlet" method="POST">
                <input type="hidden" name="formtype" value="continueShopping">
                <input type="submit" class="btn btn-default" value="Continue Shopping"/>
            </form>
            <form action="CartServlet" method="POST">
                <input type="hidden" name="formtype" value="cartCheckout">
                <input type="submit" class="btn btn-default" value="Checkout"/>
            </form>
        </div>
    </body>
</html>