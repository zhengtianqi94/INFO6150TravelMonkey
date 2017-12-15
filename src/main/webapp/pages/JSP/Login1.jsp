<%--
  Created by IntelliJ IDEA.
  User: zhoumengjiao
  Date: 12/15/17
  Time: 1:55 PM
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
    <link rel="stylesheet" href="../../assets/css/Global/open-iconic-master/font/css/open-iconic-bootstrap.css">

    <!-- Social CSS -->
    <link rel="stylesheet" href="../../assets/css/Global/bootstrap-social-gh-pages/bootstrap-social.css">

    <!-- Font Awesome CSS -->
    <link rel="stylesheet" href="../../assets/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="../../assets/font-awesome/css/font-awesome.min.css">

    <!-- General CSS-->
    <link rel="stylesheet" href="../../assets/css/Global/login.css">
    <link rel="stylesheet" href="../../assets/css/Global/index.css">
    <link rel="stylesheet" href="../../assets/css/Global/form-elements.css">

    <!-- Favicon -->
    <link rel="shortcut icon" href="../../assets/ico/monkey.ico">

    <title>Travel Monkey - Login & Register</title>


    <!-- jQuery first, then Tether, then Bootstrap JS. -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
            integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
            integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
            crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"
            integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1"
            crossorigin="anonymous"></script>
    <script src="../../assets/js/Global/jquery.backstretch.min.js"></script>
    <script src="/assets/js/Global/scripts.js"></script>

    <!-- General JS -->
    <script src="../../assets/js/Global/index.js"></script>

    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
    <script src="../../static/JS/login.js"></script>


</head>

<body ng-app="travelMonkey">
<main>

    <!-- Nav bar section -->
    <nav class="navbar navbar-expand-lg navbar-light nav-background" id="navbar-top">
        <a class="navbar-brand" onclick="window.location.href='index.html'"><img
                src="/assets/img/index/monkey-icon.png" width="25"/>Travel<span
                class="brand-text">Monkey</span></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01"
                aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <button type="button" class="btn btn-outline-primary"
                            onclick="window.location.href='login.html'">Sign In / Sign Up
                    </button>
                </li>
                <li class="nav-item active">
                    <button type="button" class="btn btn-outline-primary"
                            onclick="window.location.href='profile.html'">Home
                    </button>
                </li>
                <li class="nav-item">
                    <button type="button" class="btn btn-outline-primary"
                            onclick="window.location.href='about.html'">About
                    </button>
                </li>
                <li class="nav-item">
                    <button type="button" class="btn btn-outline-primary"
                            onclick="window.location.href='contact.html'">Contact
                    </button>
                </li>
            </ul>
        </div>
    </nav>

    <div class="row login-head">
        <div class="login-header col-sm text">
            <h1>Travel <span class="brand-text">Monkey</span> Sign In &amp; Sign Up</h1>
            <div>
                <h4>
                    Join us, read stories, share stories.
                </h4>
            </div>
        </div>
    </div>

    <!-- Top content -->
    <div class="top-content">
        <div class="inner-bg">
            <div class="container">

                <!-- Sign Form -->
                <div class="row">
                    <div class="col-sm-5">

                        <!-- Sign In Form -->
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
                                <form role="form" ng-submit="submit()"  ng-controller="signin" class="login-form">
                                    <div class="form-group">
                                        <label class="sr-only" for="form-username-login">Username</label>
                                        <input type="text" name="form-username" placeholder="Username."
                                               class="form-username form-control" id="form-username-login" ng-model="signin_username">
                                    </div>
                                    <div class="form-group">
                                        <label class="sr-only" for="form-password-login">Password</label>
                                        <input type="password" name="form-password" placeholder="Password."
                                               class="form-password form-control" id="form-password-login" ng-model="signin_password">
                                    </div>
                                    <button type="submit" class="btn btn-primary">Sign In!</button>
                                </form>
                            </div>
                        </div>
                    </div>

                    <!-- Middle Line -->
                    <div class="col-sm-1 middle-border"></div>
                    <div class="col-sm-1"></div>

                    <!-- Sign Up Form -->
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
                                <form role="form" ng-submit="submit()" ng-controller="signup" class="registration-form">
                                    <div class="form-group">
                                        <label class="sr-only" for="form-username-signup">Username</label>
                                        <input type="text" name="form-username" placeholder="Username."
                                               class="form-username form-control" id="form-username-signup"  ng-model="signup_username">
                                    </div>
                                    <div class="form-group">
                                        <label class="sr-only" for="form-password-signup">Password</label>
                                        <input type="text" name="form-password" placeholder="Password."
                                               class="form-password form-control" id="form-password-signup" ng-model = "signup_password">
                                    </div>
                                    <div class="form-group">
                                        <label class="sr-only" for="form-email-signup">Email</label>
                                        <input type="text" name="form-email" placeholder="Email."
                                               class="form-email form-control" id="form-email-signup" ng-model = "signup_email">
                                    </div>
                                    <button type="submit" class="btn btn-primary">Sign Up!</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>

    <!-- Footer section -->
    <footer>
        <div class="footer footer-section">
            <div class="row">
                <div class="col">
                    <div class="text-left">
                        Copyright &copy; 2017, Travel Monkey Team
                    </div>
                </div>
                <div class="col" id="team-link">
                    Developed by <a href="about.html">Travel Monkey Team</a>
                </div>
                <div class="col">
                    <div class="top text-right">
                        <a href="#navbar-top">
                            <span class="oi oi-arrow-circle-top"></span>
                        </a>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <div class="socialmediaicons">
                        <ul>
                            <li><img src="/assets/img/index/facebook.png" onclick="redirect('facebook')"></li>
                            <li><img src="/assets/img/index/twitter.png" onclick="redirect('twitter')"></li>
                            <li><img src="/assets/img/index/google.png" onclick="redirect('google')"></li>
                            <li><img src="/assets/img/index/linkedin.png" onclick="redirect('linkedin')"></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </footer>
</main>

</body>

</html>
