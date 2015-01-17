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
      $scope.messageSending = true
      dataFactory.email.save($scope.user,
        (value, responseHeaders)->
          $scope.messageSending = false
          $scope.messageResponse = "thank you for your message, we will contact you as soon as possible."
        (httpResponse)->
          $scope.messageSending = false
          $scope.messageResponse = "something is wrong, please try again later or send us your message to <a href='mailto:contact@wantedpixel.com'>contact@wantedpixel.com</a>"
      )
