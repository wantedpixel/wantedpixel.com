'use strict'

###*
 # @ngdoc function
 # @name wantedpixelApp.controller:AboutCtrl
 # @description
 # # AboutCtrl
 # Controller of the wantedpixelApp
###
angular.module('wantedpixelApp')
  .controller 'AboutCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
