'use strict'

angular.module('medicalAppApp')
  .controller 'ReceptionistsCtrl', ($scope) ->

    $scope.test_users = [
      {
        id: 1
        email: 'test@test.com'
        password: 'test1234'
      }
    ]

    $scope.user = {email: '', password: '', phoneNumber: '', clinic_id: null}
    $scope.error = ''

    # Will create new session with API and store auth_token
    $scope.login = ->
      $scope.error = ''
      for test_user in $scope.test_users
        if $scope.user.email == test_user.email and $scope.user.password == test_user.password
          alert 'Successfully logged in!'
          return
      $scope.error = 'Invalid login'

    # Will POST to API to create new receptionist
    $scope.createReceptionist = ->
      alert 'Email: ' + $scope.user.email
