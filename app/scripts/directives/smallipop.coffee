'use strict'

###*
 # @ngdoc directive
 # @name wantedpixelApp.directive:smallipop
 # @description
 # # smallipop
###
angular.module('wantedpixelApp')
  .directive('smallipop', ->
    restrict: 'A'
    link: (scope, element, attrs) ->
      scope.$on 'ngRepeatFinishedService', () ->
        bindSmallipop($('.service'))
      scope.$on 'ngRepeatFinishedMaker', () ->
        bindSmallipop($('.maker'))

      bindSmallipop = (selector) ->
        selector.smallipop(
          popupDistance: 0
          popupYOffset: -14
          popupAnimationSpeed: 0
          theme: "white"
          hideDelay: 0
          popupDelay: 0
        )
  )
