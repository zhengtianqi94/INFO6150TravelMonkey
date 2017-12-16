<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
          integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">

    <!-- Swiper CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.4.2/css/swiper.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.4.2/css/swiper.min.css">

    <!-- Icon CSS -->
    <link rel="stylesheet" href="../../assets/css/Global/open-iconic-master/font/css/open-iconic-bootstrap.css">

    <!-- Social CSS -->
    <link rel="stylesheet" href="../../assets/css/Global/bootstrap-social-gh-pages/bootstrap-social.css">

    <!-- General CSS -->
    <link rel="stylesheet" href="../../assets/css/Global/swiper.css">
    <link rel="stylesheet" href="../../assets/css/Global/index.css">
    <link rel="stylesheet" href="../../assets/css/Global/login.css">
    <link rel="stylesheet" href="../../assets/css/Global/profile.css"/>
    <link rel="stylesheet" href="../../assets/css/Global/about.css">
    <link rel="stylesheet" href="../../assets/css/Global/contact.css">
    <link rel="stylesheet" href="../../assets/css/Global/results.css">
    <link rel="stylesheet" href="../../assets/css/Global/view.css">
    <link rel="stylesheet" href="../../assets/css/Global/article.css">

    <!-- Favicon -->
    <link rel="shortcut icon" href="../../assets/ico/monkey.ico">
    <link rel="stylesheet" href="../../assets/font-awesome/css/font-awesome.min.css">

    <!-- Swiper -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.4.2/js/swiper.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.4.2/js/swiper.min.js"></script>

    <!-- Required plugin js script files-->

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

    <!-- General JS -->
    <script src="../../assets/js/Global/index.js"></script>


    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular-route.js"></script>
    <script src="../../static/JS/angular.js"></script>

    <title>Travel Monkey</title>
</head>
<body ng-app="travelMonkey">
<main>

    <!-- Nav bar section -->
    <nav class="navbar navbar-expand-lg navbar-light nav-background" id="navbar-top">
        <a class="navbar-brand" onclick="window.location.href='#!index'"><img
                src="/assets/img/index/monkey-icon.png" width="25"/>Travel<span
                class="brand-text">Monkey</span></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01"
                aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item item1">
                    <button type="button" class="btn btn-outline-primary"
                            onclick="window.location.href='#!login'">Sign In / Sign Up
                    </button>
                </li>
                <li class="nav-item item2">
                    <button type="button" class="btn btn-outline-primary"
                            onclick="window.location.href='#!profile'">Home
                    </button>
                </li>
                <li class="nav-item item3">
                    <button type="button" class="btn btn-outline-primary"
                            onclick="window.location.href='#!about'">About
                    </button>
                </li>
                <li class="nav-item item4">
                    <button type="button" class="btn btn-outline-primary"
                            onclick="window.location.href='#!contact'">Contact
                    </button>
                </li>
            </ul>
        </div>
    </nav>

    <div ng-view></div>

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
                    Developed by <a href="#!about">Travel Monkey Team</a>
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
                            <li><img src="../../assets/img/index/facebook.png" onclick="redirect('facebook')"></li>
                            <li><img src="../../assets/img/index/twitter.png" onclick="redirect('twitter')"></li>
                            <li><img src="../../assets/img/index/google.png" onclick="redirect('google')"></li>
                            <li><img src="../../assets/img/index/linkedin.png" onclick="redirect('linkedin')"></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </footer>
</main>
</body>
</html>