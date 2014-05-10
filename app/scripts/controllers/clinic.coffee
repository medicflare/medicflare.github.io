'use strict'

angular.module('medicalAppApp')
  .controller 'ClinicIndexCtrl', ($scope, ClinicService)->
    ClinicService.get (data) ->
      $scope.clinics = data.clinics

  .controller 'ShowClinicCtrl', ($scope, $routeParams, ClinicService) ->
    ClinicService.get (data) ->
      $scope.clinic = data.clinics[$routeParams.clinicId]





