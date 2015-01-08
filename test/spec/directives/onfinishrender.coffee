'use strict'

describe 'Directive: onFinishRender', ->

  # load the directive's module
  beforeEach module 'wantedpixelApp'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  it 'should make hidden element visible', inject ($compile) ->
    element = angular.element '<on-finish-render></on-finish-render>'
    element = $compile(element) scope
    expect(element.text()).toBe 'this is the onFinishRender directive'
