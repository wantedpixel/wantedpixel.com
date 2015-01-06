'use strict'

###*
 # @ngdoc directive
 # @name wantedpixelApp.directive:toggleDetails
 # @description
 # # toggleDetails
###
angular.module('wantedpixelApp')
  .directive('toggleDetails', ->
    restrict: 'A'
    link: (scope, element, attrs) ->
      element.click ( ->
        element.next().toggle()
        element.toggleClass("visible")
        $(".details").not(element.next()).hide()
        $(".how-title").not(element).removeClass("visible")
      )

  )
