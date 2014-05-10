'use strict'

angular.module('medicalAppApp')
  .controller 'MainCtrl', ($scope, AuthService) ->
    $scope.currentUser = AuthService.currentUser
    $scope.isAuthorized = AuthService.isAuthorized
