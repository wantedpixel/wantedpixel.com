'use strict'

###*
 # @ngdoc function
 # @name wantedpixelApp.controller:MainCtrl
 # @description
 # # MainCtrl
 # Controller of the wantedpixelApp
###
angular.module('wantedpixelApp')
  .controller 'MainCtrl', ($scope, $location, $route, $resource, dataFactory) ->
    lastRoute = $route.current

    $scope.navigateTo = (section) ->
      scrollTo(0, $("."+section).offset().top-50 )
      $location.hash(section)
      $scope.activeSection = section

    if $location.hash()
      setTimeout( ()->
        $scope.navigateTo($location.hash())
      ,500)

    $scope.$on '$locationChangeSuccess', (event) ->
      $route.current = lastRoute

    $scope.projects = dataFactory.project.query()
    $scope.services = dataFactory.service.query()
    $scope.methodology = dataFactory.methodology.query()
    $scope.makers = dataFactory.maker.query()

    $scope.sendEmail = ()->
      console.log("send")
