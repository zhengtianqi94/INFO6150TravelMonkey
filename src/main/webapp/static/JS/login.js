/**
 * Created by zhoumengjiao on 12/14/17.
 */
var app = angular.module('travelMonkey', []);


app.controller('signin', ['$scope', '$http', function ($scope, $http) {

    $scope.list = [];
    $scope.submit = function () {

        var formData = {
            "UserName": "hello",
            "PassWord": "hello",
        };

        console.log(formData);

        var response = $http.post('/tripuser/login', formData);
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
            "UserName": $scope.signup_username,
            "PassWord": $scope.signup_password,
            "Email": $scope.signup_email,
        };

        var response = $http.post('/tripuser/login', formData);
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


