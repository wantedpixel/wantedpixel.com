'use strict'

###*
 # @ngdoc service
 # @name wantedpixelApp.DataFactory
 # @description
 # # DataFactory
 # Factory in the wantedpixelApp.
###
angular.module('wantedpixelApp')
  .factory 'dataFactory',['$resource', ($resource) ->
    dataFactory = {}
    dataFactory.project = $resource('/mockups/project.json')
    dataFactory.service = $resource('/mockups/service.json')
    dataFactory
  ]
