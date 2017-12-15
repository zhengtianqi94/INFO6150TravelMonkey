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

<!-- Initial Swiper object -->
<script>

    //Initial Swiper for cover
    var swiper = new Swiper('.swiper-container', {
        pagination: '.swiper-pagination',
        nextButton: '.swiper-button-next',
        prevButton: '.swiper-button-prev',
        spaceBetween: 30,
        loop: true,
        effect: 'fade',
        centeredSlides: true,
        autoplay: 5000,
        autoplayDisableOnInteraction: false,
        paginationClickable: true
    });

    //Initial Swiper for album
    var swiper_album = new Swiper('.swiper-album-container', {
        spaceBetween: 60,
        loop: true,
        centeredSlides: true,
        autoplay: 5000,
        autoplayDisableOnInteraction: false,
        slidesPerView: 3,
        mousewheelControl: true,
        breakpoints: {
            1163: {
                slidesPerView: 2,
                spaceBetween: 30
            },
            800: {
                slidesPerView: 1,
                spaceBetween: 20
            }
        }
    });
</script>

</body>
</html>