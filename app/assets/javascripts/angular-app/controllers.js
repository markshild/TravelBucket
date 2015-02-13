'use strict';

/* Controllers */
var myControllers = angular.module('myControllers', []);

myControllers.controller('homeCtrl', ['$scope', '$http', function($scope, $http) {
  $http.get('api/show').success(function(data) {
    $scope.name = data.user;
    $scope.countries = data.countries
    $scope.visited = data.visited
  });
}]);

myControllers.controller('leadersCtrl', ['$scope', '$routeParams', '$http',
function($scope, $routeParams, $http) {
  $http.get('leaders.json').success(function(data) {
    $scope.leaders = data;
  });


}]);
