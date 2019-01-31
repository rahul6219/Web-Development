<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Log In</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="style.css">
        <!-- c:import url="/Header.jsp"/> -->
    </head>
    <body class="container bg">
        <div class="overlay"></div>
        <c:import url="/Header.jsp"/>
        <div class="col-xs-6">
            <h2>Log In</h2> <!-- log in form-->
            <form class="form-horizontal" action="UserServlet" method="post">
                <input type="hidden" name="formtype" value="login">

                <!-- User Email type in -->
                <div class="form-group">
                    <label class="control-label col-sm-2" for="email">Email:</label>
                    <div class="col-sm-10">
                        <input type="email" class="form-control" name="email" placeholder="Type your email" required/>
                    </div>
                </div>

                <!-- user password form -->
                <div class="form-group">
                    <label class="control-label col-sm-2" for="password">Password:</label>
                    <div class="col-sm-10">          
                        <input type="password" class="form-control" name="password" placeholder="Enter password" required/>
                    </div>
                </div>

                <!-- remember check box -->
                <div class="form-group">        
                    <div class="col-sm-offset-2 col-sm-10">
                        <div class="checkbox">
                            <label><input type="checkbox"> Remember me</label>
                        </div>
                    </div>
                </div>

                <!-- submit button -->
                <div class="form-group">        
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-danger">Submit</button>
                    </div>
                </div>

            </form><!-- sign up form -->
            <h2>Sign up</h2>
            <form class="form-horizontal" action="UserServlet" method="post">
                <input type="hidden" name="formtype" value="signUp">

                <!-- New user first name -->
                <div class="form-group">
                    <label class="control-label col-sm-2" for="firstName">First Name:</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name="firstName" placeholder="Enter your First Name" required/>
                    </div>
                </div>

                <!-- New user Last Name-->
                <div class="form-group">
                    <label class="control-label col-sm-2" for="lastName">Last Name:</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name="lastName" placeholder="Enter your Last Name" required/>
                    </div>
                </div>

                <!-- new user email form start -->
                <div class="form-group">
                    <label class="control-label col-sm-2" for="email">Email:</label>
                    <div class="col-sm-10">
                        <input type="email" class="form-control" name="email" placeholder="Enter your Email" required/>
                    </div> 
                </div>

                <!-- new user enter password -->
                <div class="form-group">
                    <label class="control-label col-sm-2" for="password">Password:</label>
                    <div class="col-sm-10">          
                        <input type="password" class="form-control" name="password" placeholder="Create a password" required/>
                    </div>
                </div>

                <!-- submit button -->
                <div class="form-group">        
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-danger">Submit</button>
                    </div>
                </div>

            </form>
        </div>
        <c:import url="/Footer.jsp"/>
    </body>
</html>