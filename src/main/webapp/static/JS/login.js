/**
 * Created by zhoumengjiao on 12/14/17.
 */
angular.module('login', [])
    .controller('login', function($scope) {
        $http.get('/login').success(function(data) {
            $scope.greeting = data;



        })
    })