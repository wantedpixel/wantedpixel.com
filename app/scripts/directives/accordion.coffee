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



###
$(document).ready(function() {
$("#example4 ul").zAccordion({
    slideWidth: 506,
    width: 940,
    height: 537,
    timeout: 3000,
    speed: 900,
    easing:"jswing",
    slideClass: "frame",
    trigger:"mouseover",
    auto: false,
    tabwidth:75,
    invert: true,

    animationStart: function () {
    $("li.frame-open .curtain").fadeOut("slow");

  $("li.frame-closed .curtain").fadeIn("slow");

},
animationComplete: function () {

}
});
});

###

