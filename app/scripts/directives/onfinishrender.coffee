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
          if attrs.onFinishRender == 'isService'
            scope.$emit('ngRepeatFinishedService');
          else if attrs.onFinishRender == 'isMaker'
            scope.$emit('ngRepeatFinishedMaker');
          else
            scope.$emit('ngRepeatFinished');
  )
