/**
 * Created by zhoumengjiao on 12/14/17.
 */
var app = angular.module('travelMonkey', ["ngRoute"]);

app.config(function($routeProvider) {
    $routeProvider
        .when(" ", {
            templateUrl : "/pages/home.jsp"
        })
        .when("/", {
            templateUrl : "/pages/home.jsp"
        })
        .when("/index", {
            templateUrl : "/pages/home.jsp"
        })
        .when("/login", {
            templateUrl : "/pages/login.jsp"
        })
        .when("/about", {
            templateUrl : "/pages/about.jsp"
        })
        .when("/contact", {
            templateUrl : "/pages/contact.jsp"
        })
        .when("/results", {
            templateUrl : "/pages/results.jsp"
        })
        .when("/article", {
            templateUrl : "/pages/article.jsp"
        })
        .when("/view1", {
            templateUrl : "/pages/view1.jsp"
        })
        .when("/view2", {
            templateUrl : "/pages/view2.jsp"
        })
        .when("/view3", {
            templateUrl : "/pages/view3.jsp"
        })
        .when("/view4", {
            templateUrl : "/pages/view4.jsp"
        })
        .when("/view5", {
            templateUrl : "/pages/view5.jsp"
        })
        .when("/view6", {
            templateUrl : "/pages/view6.jsp"
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
            templateUrl : "/pages/profile.jsp"
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
        response.success(function (data, status, headers, config) {
           console.log(data);
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

        var response = $http.post('/tripuser/User', formData);
        response.success(function (data, status, headers, config) {
            console.log(data);
        });
        response.error(function (data, status, headers, config) {
            alert("Exception details: " + JSON.stringify({data: data}));
        });

        //Empty list data after process
        $scope.list = [];

    };
}]);


