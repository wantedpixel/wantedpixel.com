'use strict'

describe 'Service: DataFactory', ->

  # load the service's module
  beforeEach module 'wantedpixelApp'

  # instantiate service
  DataFactory = {}
  beforeEach inject (_DataFactory_) ->
    DataFactory = _DataFactory_

  it 'should do something', ->
    expect(!!DataFactory).toBe true
