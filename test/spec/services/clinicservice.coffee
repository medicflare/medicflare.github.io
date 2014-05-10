'use strict'

describe 'Service: Clinicservice', ->

  # load the service's module
  beforeEach module 'medicalAppApp'

  # instantiate service
  Clinicservice = {}
  beforeEach inject (_Clinicservice_) ->
    Clinicservice = _Clinicservice_

  it 'should do something', ->
    expect(!!Clinicservice).toBe true
