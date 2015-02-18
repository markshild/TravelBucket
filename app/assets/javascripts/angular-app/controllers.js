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
    $http.delete('user_countries/1', {params: {country_id: country.id}}).success(function() {
      var idx = $scope.visited.indexOf(country);
      $scope.visited.splice(idx, 1);
      country.visit = false;
    });
  }
}]);

myControllers.controller('leadersCtrl', ['$scope', '$routeParams', '$http',
function($scope, $routeParams, $http) {
  $scope.moduleState = 'top';
  $http.get('api/leaders').success(function(data) {
    $scope.top = data.top;
    $scope.africa = data.africa;
    $scope.asia = data.asia;
    $scope.europe = data.europe;
    $scope.namerica = data.namerica;
    $scope.oceania = data.oceania;
    $scope.samerica = data.samerica;
  });
  $scope.changeView = function(continent) {
    $scope.moduleState = continent;
  };

}]);

myControllers.controller('mapCtrl', ['$scope', '$routeParams', '$http',
function($scope, $routeParams, $http) {
  $http.get('api/map').success(function(data) {
    $scope.visited = data.visited;
    $scope.working = false;
    $scope.countryHash = data.countries
    // var val = {};
    // angular.forEach($scope.visited, function (code) {
    //   val[code] = 'selected';
    // });
    $('#world-map').vectorMap({
      map: 'world_mill_en',
      regionsSelectable: true,
      backgroundColor: '#0000FF',
      regionStyle: {
        initial: {
          fill: 'white'
        },
        selected: {
          fill: '#0B6121'
        }
      },
      selectedRegions: $scope.visited,
      onRegionSelected: function(event) {
        event.preventDefault();
      },
      onRegionClick: function(event, countryCode){
        if ($scope.working) {
          return;
        }
        $scope.working = true;
        var mapObject = $('#world-map').vectorMap('get','mapObject');
        console.log(mapObject.regions[countryCode].element.isSelected);
        if ($scope.visited.indexOf(countryCode) == -1) {
          $http.post('user_countries', {country_id: $scope.countryHash[countryCode]}).success(function() {
            $scope.visited.push(countryCode);
            $scope.working = false;
          });
        } else {
          $http.delete('user_countries/1', {params: {country_id: $scope.countryHash[countryCode]}}).success(function() {
            var idx = $scope.visited.indexOf(countryCode);
            $scope.visited.splice(idx, 1);
            $scope.working = false;
          });

        }

      }
    });
  });


}]);
