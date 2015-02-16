'use strict';

/* Controllers */
var myControllers = angular.module('myControllers', ['ng-rails-csrf']);

myControllers.controller('homeCtrl', ['$scope', '$http', function($scope, $http) {
  $http.get('api/show').success(function(data) {
    $scope.name = data.user;
    $scope.countries = data.countries;
    $scope.visited = data.visited;
  });

  $scope.addCountry = function (country) {

    $http.post('user_countries', {country_id: country.id}).success(function() {
      $scope.visited.push(country);
      country.visit = true;
    });
  }

  $scope.removeCountry = function (country) {
    $http.delete('user_countries/1', {country_id: country.id}).success(function() {
      var idx = $scope.visited.indexOf(country);
      $scope.visited.splice(idx, 1);
      country.visit = false;
    });
  }
}]);

myControllers.controller('leadersCtrl', ['$scope', '$routeParams', '$http',
function($scope, $routeParams, $http) {
  $http.get('api/leaders').success(function(data) {
    $scope.leaders = data;
  });


}]);
