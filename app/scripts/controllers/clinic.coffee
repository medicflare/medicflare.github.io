'use strict'

angular.module('medicalAppApp')
  .controller 'ClinicIndexCtrl',
    [ '$scope', 'ClinicService', ($scope, ClinicService)->

      ClinicService.get (data) ->
        $scope.clinics = data.clinics
        return
    ]

  .controller 'ShowClinicCtrl',
    [ '$scope', '$stateParams', 'ClinicService', ($scope, $stateParams, ClinicService) ->

      ClinicService.get (data) ->
        $scope.clinic = data.clinics[$stateParams.clinicId]
        return

      $scope.message = 'Your confirmation was successful. You will be added to the queue shortly' if $stateParams.success
      return
    ]