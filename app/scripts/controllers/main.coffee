'use strict'

###*
 # @ngdoc function
 # @name wantedpixelApp.controller:MainCtrl
 # @description
 # # MainCtrl
 # Controller of the wantedpixelApp
###
angular.module('wantedpixelApp')
  .controller 'MainCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
