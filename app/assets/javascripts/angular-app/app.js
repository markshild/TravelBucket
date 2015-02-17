'use strict';

/* App Module */
var myApp = angular.module('myApp', [
  'ngRoute',

  'myAnimations',
  'myControllers',
  'templates'
  // 'myFilters',
  // 'myServices',
]);

myApp.config(['$routeProvider',
function($routeProvider) {
  $routeProvider.
  when('/hi', {
    templateUrl: 'home.html',
    controller: 'homeCtrl'
  }).
  when('/leaders', {
    templateUrl: 'leaders.html',
    controller: 'leadersCtrl'
  }).
  otherwise({
    redirectTo: '/hi'
  });
}]);
