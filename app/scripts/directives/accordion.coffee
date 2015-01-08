'use strict'

###*
 # @ngdoc directive
 # @name wantedpixelApp.directive:accordion
 # @description
 # # accordion
###
angular.module('wantedpixelApp')
.directive('accordion', ->
  restrict: 'A'
  link: (scope, element, attrs) ->
    scope.$on 'ngRepeatFinished', (ngRepeatFinishedEvent) ->
      element.zAccordion
        timeout: 5500
        slideWidth: 506
        width: 940
        height: 537
        speed: 400
        easing:"jswing"
        slideClass: "frame"
        trigger:"mouseover"
        auto: false
        tabwidth:75
        invert: true
)
