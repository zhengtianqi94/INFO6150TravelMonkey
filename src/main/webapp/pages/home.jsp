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
        autoplay: 1000,
        autoplayDisableOnInteraction: false,
        paginationClickable: true
    });

    //Initial Swiper for album
    var swiper_album = new Swiper('.swiper-album-container', {
        spaceBetween: 60,
        loop: true,
        centeredSlides: true,
        autoplay: 1000,
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