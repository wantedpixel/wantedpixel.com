'use strict'

###*
 # @ngdoc overview
 # @name wantedpixelApp
 # @description
 # # wantedpixelApp
 #
 # Main module of the application.
###
angular
  .module('wantedpixelApp', [
    'ngResource',
    'ngRoute',
    'ngSanitize',
    'ngTouch'
  ])
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
      .otherwise
        redirectTo: '/'

