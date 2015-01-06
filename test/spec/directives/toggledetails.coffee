'use strict'

describe 'Directive: toggleDetails', ->

  # load the directive's module
  beforeEach module 'wantedpixelApp'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  it 'should make hidden element visible', inject ($compile) ->
    element = angular.element '<toggle-details></toggle-details>'
    element = $compile(element) scope
    expect(element.text()).toBe 'this is the toggleDetails directive'
