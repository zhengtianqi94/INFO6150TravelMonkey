/**
 * Created by zhoumengjiao on 12/14/17.
 */
var app = angular.module('travelMonkey', ["ngRoute"]);

app.config(function ($routeProvider) {
    $routeProvider
        .when(" ", {
            templateUrl: "/pages/home.jsp"
        })
        .when("/", {
            templateUrl: "/pages/home.jsp"
        })
        .when("/index", {
            templateUrl: "/pages/home.jsp"
        })
        .when("/login", {
            templateUrl: "/pages/login.jsp"
        })
        .when("/about", {
            templateUrl: "/pages/about.jsp"
        })
        .when("/contact", {
            templateUrl: "/pages/contact.jsp"
        })
        .when("/results", {
            templateUrl: "/pages/results.jsp"
        })
        .when("/article", {
            templateUrl: "/pages/article.jsp"
        })
        .when("/view1", {
            templateUrl: "/pages/view1.jsp"
        })
        .when("/view2", {
            templateUrl: "/pages/view2.jsp"
        })
        .when("/view3", {
            templateUrl: "/pages/view3.jsp"
        })
        .when("/view4", {
            templateUrl: "/pages/view4.jsp"
        })
        .when("/view5", {
            templateUrl: "/pages/view5.jsp"
        })
        .when("/view6", {
            templateUrl: "/pages/view6.jsp"
        })
        .when("/results", {
            templateUrl: "/pages/results.jsp"
        })
        .when("/edit", {
            templateUrl: function (params) {
                return '/pages/edit' + params.number + '.jsp';
            }
        })
        .when("/view/:number", {
            templateUrl: function (params) {
                return '/pages/view' + params.number + '.jsp';
            }
        })
        .when("/article", {
            templateUrl: "/pages/article.jsp",
        })
        .when("/profile", {
            templateUrl: "/pages/profile.jsp"
        });

});


app.controller('signin', ['$scope', '$http', function ($scope, $http) {

    $scope.list = [];
    var flag = true;
    $scope.submit = function () {

        if ($scope.signin_username == null || $scope.signin_username == undefined) {
            console.log("username error");
            flag = false;
            $("#form-username-login").css("border-color", "red");
        } else {
            flag = true;
            $("#form-username-login").css("border-color", "blue");
        }
        if ($scope.signin_password == null || $scope.signin_username == undefined) {
            console.log("password error");
            flag = false;
            $("#form-password-login").css("border-color", "red");
        } else {
            flag = true;
            $("#form-password-login").css("border-color", "blue");
        }

        if (flag == true) {
            $scope.user = {"userName": $scope.signin_username, "passWord": $scope.signin_password};

            $http({
                method: "POST",
                url: '/tripuser/signin', // link UserLogin with HomeController
                data: $scope.user
            }).then(function (response) {

                if (response.status == 200) {
                    $scope.islogin = true;
                    console.log(response);
                    $scope.username = response.data.UserName;
                    // console.log($scope.username);
                    $("#before-login").css('display', 'none');
                    $("#login-user").text('Welcome ' + $scope.username);
                    $("#login-user").css('display', 'block');

                    alert("Sign In Success!");
                }
            }, function (error) {
                alert("Username & Password does not match!");
                $("#form-username-login").css("border-color", "yellow");
                $("#form-password-login").css("border-color", "yellow");
            });

        }
    }
}]);

app.controller('signup', ['$scope', '$http', function ($scope, $http) {

    var flag = true;
    $scope.submit = function () {
        if ($scope.signup_username == null || $scope.signup_username == undefined) {
            console.log("username error");
            flag = false;
            $("#form-username-signup").css("border-color", "red");
        } else {
            flag = true;
            $("#form-username-signup").css("border-color", "blue");
        }
        if ($scope.signup_password == null || $scope.signup_password == undefined) {
            console.log("password error");
            flag = false;
            $("#form-password-signup").css("border-color", "red");
        } else {
            flag = true;
            $("#form-password-signup").css("border-color", "blue");
        }
        if ($scope.signup_email == null || $scope.signup_email == undefined) {
            console.log("email error");
            flag = false;
            $("#form-email-signup").css("border-color", "red");
        } else {
            flag = true;
            $("#form-email-signup").css("border-color", "blue");
        }

        if (flag == true) {
            var formData = {
                "userName": $scope.signup_username,
                "passWord": $scope.signup_password,
                "email": $scope.signup_email
            };
            $http({
                method: "POST",
                url: '/tripuser/signup', // link UserLogin with HomeController
                data: formData
            }).then(function (response) {

                if (response.status == 200) {
                    alert("Sign Up Success! Please Sign In");
                }

            }, function (error) {
                alert("Something goes wrong! Please check your input!");
                $("#form-username-signup").css("border-color", "yellow");
                $("#form-password-signup").css("border-color", "yellow");
                $("#form-email-signup").css("border-color", "yellow");
            });


        }
    }
}]);


