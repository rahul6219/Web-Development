<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin</title>
        <link rel="stylesheet" href="CSS/adminPage.css">
        <!--<link rel="stylesheet" href="CSS/mainPage.css">-->
<!--        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>-->
    </head>

    <body>
        <div class="container bg">
        <c:import url="/Header.jsp"/>
        <div class="admin">
            <h1 class="title">User Accounts: Administrative Page</h1>
        <table class="table table-start">
            <tr>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>
                <th>Password</th>
                <th>Account Type</th>
                <th>Action</th>
            </tr>
            <c:forEach var="user" items="${users}">
                <tr>
                    <td><c:out value="${user.firstName}"/></td>
                    <td><c:out value="${user.lastName}"/></td>
                    <td><c:out value="${user.email}"/></td>
                    <td><c:out value="${user.password}"/></td>
                    <td><c:out value="${user.role}"/></td>
                    <td>
                        <form action="AdminServlet" method="POST">
                            <input type="hidden" name="firstName" value="${user.firstName}"/>
                            <input type="hidden" name="lastName" value="${user.lastName}"/>
                            <input type="hidden" name="email" value="${user.email}"/>
                            <input type="hidden" name="password" value="${user.password}"/>
                            <input type="hidden" name="method" value ="showUserEditForm"/>
                            <input class="button" type="submit" value="Edit"/>
                        </form>
                        <form action="AdminServlet" method="POST">
                            <input type="hidden" name="email" value="${user.email}"/>
                            <input type="hidden" name="method" value ="deleteUser"/>
                            <input class="button" type="submit" value="Delete"/>
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </table>
            </div>
        <c:import url="/Footer.jsp"/>
        </div>
    </body>
</html>
