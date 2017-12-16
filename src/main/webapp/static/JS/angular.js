/**
 * Created by zhoumengjiao on 12/14/17.
 */
var app = angular.module('travelMonkey', ["ngRoute"]);

app.config(function($routeProvider) {
    $routeProvider
        .when(" ", {
            templateUrl : "/pages/home.jsp",
        })
        .when("/", {
            templateUrl : "/pages/home.jsp",
        })
        .when("/index", {
            templateUrl : "/pages/home.jsp",
        })
        .when("/login", {
            templateUrl : "/pages/login.jsp",
        })
        .when("/about", {
            templateUrl : "/pages/about.jsp",
        })
        .when("/contact", {
            templateUrl : "/pages/contact.jsp",
        })
        .when("/results", {
            templateUrl : "/pages/results.jsp",
        })
        .when("/edit", {
            templateUrl: function(params){ return '/pages/edit'+params.number+'.jsp';}
        })
        .when("/view/:number", {
            templateUrl: function(params){ return '/pages/view'+params.number+'.jsp';}
        })
        .when("/article", {
            templateUrl : "/pages/article.jsp",
        })
        .when("/profile", {
            templateUrl : "/pages/profile.jsp",
        });

});



app.controller('signin', ['$scope', '$http', function ($scope, $http) {

    $scope.list = [];
    $scope.submit = function () {

        $scope.user ={"userName": $scope.signin_username,"passWord":$scope.signin_password } ;
        console.log( $scope.user);

       var response = $http({
            method : "POST",
            url : "/tripuser/User",
            data : JSON.stringify($scope.user),
            headers : {
                'Content-Type' : 'application/json'
            }
        });
        then(function (success){

        },function (error){

        });
        response.error(function (data, status, headers, config) {
            alert("Exception details: " + JSON.stringify({data: data}));
        });

        //Empty list data after process
        $scope.list = [];

    };
}]);

app.controller('signup', ['$scope', '$http', function ($scope, $http) {

    $scope.list = [];
    $scope.submit = function () {

        var formData = {
            "userName": $scope.signup_username,
            "passWord": $scope.signup_password,
            "email": $scope.signup_email,
        };

        $http({
            method: "POST",
            url: '/tripuser/User', // link UserLogin with HomeController
            data: formData
        }).then(function (response) {

            if(response.status ==200){

            }

        }, function (error) {
            console.log(response);
        });
        //Empty list data after process
        $scope.list = [];

    };
}]);


