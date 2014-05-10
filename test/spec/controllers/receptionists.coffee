'use strict'

describe 'Controller: ReceptionistsCtrl', ->

  # load the controller's module
  beforeEach module 'medicalAppApp'

  ReceptionistsCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    ReceptionistsCtrl = $controller 'ReceptionistsCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', ->
    expect(scope.awesomeThings.length).toBe 3
