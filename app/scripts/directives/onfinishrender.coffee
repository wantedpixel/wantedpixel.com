'use strict'

###*
 # @ngdoc directive
 # @name wantedpixelApp.directive:onFinishRender
 # @description
 # # onFinishRender
###
angular.module('wantedpixelApp')
  .directive('onFinishRender', ($timeout)->
    restrict: 'A'
    link: (scope, element, attrs) ->
      if (scope.$last == true)
        $timeout ->
          scope.$emit('ngRepeatFinished');
  )