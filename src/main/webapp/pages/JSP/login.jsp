<%--
  Created by IntelliJ IDEA.
  User: zhoumengjiao
  Date: 12/14/17
  Time: 11:57 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
          integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">

    <!-- Icon CSS -->
    <link rel="stylesheet" href="/assets/css/Global/open-iconic-master/font/css/open-iconic-bootstrap.css">

    <!-- Social CSS -->
    <link rel="stylesheet" href="/assets/css/Global/bootstrap-social-gh-pages/bootstrap-social.css">

    <!-- Font Awesome CSS -->
    <link rel="stylesheet" href="/assets/font-awesome/css/font-awesome.min.css">

    <!-- General CSS-->
    <link rel="stylesheet" href="/assets/css/Global/login.css">
    <link rel="stylesheet" href="/assets/css/Global/index.css">
    <link rel="stylesheet" href="/assets/css/Global/form-elements.css">

    <!-- Favicon -->
    <link rel="shortcut icon" href="/assets/ico/monkey.ico">

    <title>Travel Monkey - Login & Register</title>

    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
    <script src="../../static/JS/login.js"></script>

</head>

<body ng-app="travelMonkey">

<!-- Top content -->
<div class="top-content">

    <div class="inner-bg">
        <div class="container">

            <div class="row">
                <div class="col-sm-8 col-sm-offset-2 text">
                    <h1><strong>Travel Monkey</strong> Login &amp; Register Page</h1>
                    <div class="description">
                        <h4>
                            Join us and share your travel diary!
                        </h4>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-sm-5">

                    <div class="form-box">
                        <div class="form-top">
                            <div class="form-top-left">
                                <h1>Login to our site</h1>
                            </div>
                            <div class="form-top-right">
                                <i class="fa fa-key"></i>
                            </div>
                        </div>
                        <div class="form-bottom">
                            <form role="form" class="login-form" ng-submit="submit()" ng-controller="signin">
                                <div class="form-group">
                                    <label class="sr-only" for="login-username">Username</label>
                                    <input type="text" name="form-username" placeholder="Username..."
                                           class="form-username form-control" id="login-username"
                                           ng-model="signin_username">
                                </div>
                                <div class="form-group">
                                    <label class="sr-only" for="login-password">Password</label>
                                    <input type="password" name="form-password" placeholder="Password..."
                                           class="form-password form-control" id="login-password"
                                           ng-model="signin_password">
                                </div>
                                <button type="submit" class="btn">Sign in!</button>
                            </form>
                        </div>
                    </div>

                </div>

                <div class="col-sm-1 middle-border"></div>
                <div class="col-sm-1"></div>

                <div class="col-sm-5">

                    <div class="form-box">
                        <div class="form-top">
                            <div class="form-top-left">
                                <h1>Sign up now</h1>
                            </div>
                            <div class="form-top-right">
                                <i class="fa fa-pencil"></i>
                            </div>
                        </div>
                        <div class="form-bottom">
                            <form role="form" ng-submit="submit()" ng-controller="signup">
                                <div class="form-group">
                                    <label class="sr-only" for="signup-username">Username</label>
                                    <input type="text" name="form-username" placeholder="Username..."
                                           class="form-username form-control" id="signup-username"
                                           ng-model="signup_username">
                                </div>
                                <div class="form-group">
                                    <label class="sr-only" for="signup-password">Password</label>
                                    <input type="text" name="form-password" placeholder="Password..."
                                           class="form-password form-control" id="signup-password"
                                           ng-model="signup_password">
                                </div>
                                <div class="form-group">
                                    <label class="sr-only" for="form-email">Email</label>
                                    <input type="text" name="form-email" placeholder="Email..."
                                           class="form-email form-control" id="form-email" ng-model="signup_email">
                                </div>
                                <button type="submit" class="btn">Sign up!</button>
                            </form>
                        </div>
                    </div>

                </div>
            </div>

        </div>
    </div>

</div>

<!-- Footer -->
<footer>
    <div class="container">
        <div class="row">

            <div class="col-sm-8 col-sm-offset-2">
                <div class="footer-border"></div>
                <p>Copyright 2017, <a href="../HTML/index.html" target="_blank"><strong>Travel Monkey</strong></a></p>
            </div>

        </div>
    </div>
</footer>

<!-- Javascript -->


</body>

</html>
