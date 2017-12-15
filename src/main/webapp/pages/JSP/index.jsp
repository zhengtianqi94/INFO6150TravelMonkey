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

    <!-- Favicon -->
    <link rel="shortcut icon" href="../../assets/ico/monkey.ico">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.4.2/js/swiper.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.4.2/js/swiper.min.js"></script>

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



    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular-route.js"></script>
    <script src="../../static/JS/angular.js"></script>

    <title>Travel Monkey</title>
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
                            onclick="window.location.href='index'">Sign In / Sign Up
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

    <!-- Cover photo section-->
    <div class="swiper-container">
        <div class="swiper-wrapper">
            <div class="swiper-slide slide-1">
                <div class="slide-content">
                    <p class="title">
                        <strong>Travel Monkey</strong><span class="subtitle"> always "good idea"</span>
                    </p><br/>
                    <p class="text">It leaves you speechless, then turns your into a storyteller.</p><br/>
                    <button type="button" class="btn btn-outline-light"><a href="#search-section">Search Now</a>
                    </button>
                </div>
            </div>
            <div class="swiper-slide slide-2">
                <div class="slide-content">
                    <p class="title">
                        <span class="subtitle">To travel with </span><strong>Travel Monkey</strong>
                    </p><br/>
                    <p class="text">It leaves you speechless, then turns your into a storyteller.</p><br/>
                    <button type="button" class="btn btn-outline-light"><a href="#search-section">Search Now</a>
                    </button>
                </div>
            </div>
            <div class="swiper-slide slide-3">
                <div class="slide-content">
                    <p class="title">
                        <span class="subtitle">To travel with </span><strong>Travel Monkey</strong>
                    </p><br/>
                    <p class="text">It leaves you speechless, then turns your into a storyteller.</p><br/>
                    <button type="button" class="btn btn-outline-light"><a href="#search-section">Search Now</a>
                    </button>
                </div>
            </div>
            <div class="swiper-slide slide-4">
                <div class="slide-content">
                    <p class="title">
                        <span class="subtitle">To travel with </span><strong>Travel Monkey</strong>
                    </p><br/>
                    <p class="text">It leaves you speechless, then turns your into a storyteller.</p><br/>
                    <button type="button" class="btn btn-outline-light"><a href="#search-section">Search Now</a>
                    </button>
                </div>
            </div>
            <div class="swiper-slide slide-5">
                <div class="slide-content">
                    <p class="title">
                        <span class="subtitle">To travel with </span><strong>Travel Monkey</strong>
                    </p><br/>
                    <p class="text">It leaves you speechless, then turns your into a storyteller.</p><br/>
                    <button type="button" class="btn btn-outline-light"><a href="#search-section">Search Now</a>
                    </button>
                </div>
            </div>
        </div>
        <!--<div class="swiper-pagination swiper-pagination-white"></div>-->
        <div class="swiper-button-next swiper-button-white"></div>
        <div class="swiper-button-prev swiper-button-white"></div>
    </div>

    <!-- Search section -->
    <div class="padding-div search-section" id="search-section">
        <h1>Search Guide Now!</h1>
        <br/>
        <form action="results.html">
            <div class="form-row">
                <div class="form-group col-md-2"></div>
                <div class="form-group col-md-3">
                    <label class="sr-only" for="countryInput">Country to go</label>
                    <input type="text" class="form-control" id="countryInput" placeholder="Search for a country">
                </div>
                <div class="form-group col-md-3">
                    <label class="sr-only" for="seasonInput">Season of favorite</label>
                    <input type="text" class="form-control" id="seasonInput" placeholder="Favorite season">
                </div>
                <div class="form-group col-md-2">
                    <button type="submit" id="submitButton" class="form-control btn btn-primary">Search Now
                    </button>
                </div>
            </div>
        </form>
    </div>

    <!-- Offer section -->
    <div class="padding-div offer-section">
        <h1 class="offer-head">We Offer</h1>
        <br/>
        <div class="card-deck center">
            <div class="card">
                <img class="card-img-top" src="../../assets/img/index/join_us.jpg" alt="Card image cap">
                <div class="card-body">
                    <h4 class="card-title">Join Us</h4>
                    <p class="card-text">Join our traveller community, gain more happiness!</p>
                </div>
            </div>
            <div class="card">
                <img class="card-img-top" src="../../assets/img/index/share.jpg" alt="Card image cap">
                <div class="card-body">
                    <h4 class="card-title">Share Story</h4>
                    <p class="card-text">Share your story, let more travellers follow your guide!</p>
                </div>
            </div>
            <div class="card">
                <img class="card-img-top" src="../../assets/img/index/search_guide.jpg" alt="Card image cap">
                <div class="card-body">
                    <h4 class="card-title">Search Guide</h4>
                    <p class="card-text">Search a guide, know the best way to go!</p>
                </div>
            </div>
        </div>
    </div>

    <!-- Album section -->
    <div class="padding-div photo-show-case photo-section">
        <h1>Featured Spots</h1>
        <div class="photo-show-case">
            <div class="swiper-album-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <img src="../../assets/img/index/visit1.jpg" class="visit-album"/>
                    </div>
                    <div class="swiper-slide">
                        <img src="../../assets/img/index/visit2.jpg" class="visit-album"/>
                    </div>
                    <div class="swiper-slide">
                        <img src="../../assets/img/index/visit3.jpg" class="visit-album"/>
                    </div>
                    <div class="swiper-slide">
                        <img src="../../assets/img/index/visit4.jpg" class="visit-album"/>
                    </div>
                    <div class="swiper-slide">
                        <img src="/assets/img/index/visit5.jpg" class="visit-album"/>
                    </div>
                    <div class="swiper-slide">
                        <img src="../../assets/img/index/visit6.jpg" class="visit-album"/>
                    </div>
                    <div class="swiper-slide">
                        <img src="../../assets/img/index/visit7.jpg" class="visit-album"/>
                    </div>
                    <div class="swiper-slide">
                        <img src="../../assets/img/index/visit8.jpg" class="visit-album"/>
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

<!-- Required plugin js script files-->

<!-- Swiper -->

<!-- General JS -->
<script src="../../assets/js/Global/index.js"></script>



</body>
</html>