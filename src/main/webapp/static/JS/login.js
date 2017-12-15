/**
 * Created by zhoumengjiao on 12/14/17.
 */
var app = angular.module('travelMonkey', []);


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


