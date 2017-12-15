
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