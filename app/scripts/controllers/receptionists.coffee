'use strict'

angular.module('medicalAppApp')
  .controller 'ReceptionistsCtrl', ($scope, AuthService, ClinicService) ->

    ClinicService.get (data) ->
      $scope.clinics = data.clinics

    $scope.user = {email: '', password: '', phoneNumber: '', clinic_id: null}
    $scope.error = ''

    $scope.login = ->
      $scope.error = ''
      AuthService.login($scope.user).then ( ->
          console.log 'Successful login'
          #redirect
        ),
        ( ->
          $scope.error = 'Invalid email or password. Please try again'
        )

    # Will POST to API to create new receptionist
    $scope.createReceptionist = ->
      alert 'Email: ' + $scope.user.email
