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
        if(attrs.smallipop=="isService")
          selector = $('.service')
        else
          selector = element
        selector.smallipop(
          popupDistance: 0
          popupYOffset: -14
          popupAnimationSpeed: 0
          theme: "white"
          hideDelay: 0
          popupDelay: 0
        )
        return
  )
