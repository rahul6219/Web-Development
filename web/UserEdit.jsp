<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Account</title>
        <!--<link rel="stylesheet" href="style.css">-->
        <link rel="stylesheet" href="CSS/adminPage.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body class="container bg">
        <div class="adminOuter">
        <c:import url="/Header.jsp"/>
        <h1 class="title">Admin: Account Update</h1>
        <form class="form" action="AdminServlet" method="post">
            <table>
                <tr><td><label>First Name</label></td> <td>${usertoedit.firstName}<br></td></tr>
                <tr><td><label>Last Name</label></td> <td>${usertoedit.lastName}<br></td></tr>
                <tr><td><label>Email</label></td> <td>${usertoedit.email}<br></td></tr>
                <tr><td><label>Password</label> </td>
                    <td><input type="text" name="password" value="${usertoedit.password}"/><br></td></tr>
                <tr><td><label>Role</label></td>
                        <td><input type="text" name="role" value="${usertoedit.role}"/><br></td></tr>
            <input type="hidden" name="firstname" value="${usertoedit.firstName}"/>
            <input type="hidden" name="lastname" value="${usertoedit.lastName}"/>
            <input type="hidden" name="email" value="${usertoedit.email}"/>
            </table>
            <input type="hidden" name="method" value="editUser"/>
            <input type="submit" value="Submit"/>
            
        </form>
            

            
        </div>
            <c:import url="/Footer.jsp"/>
    </body>
</html>
