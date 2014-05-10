'use strict'

angular.module('medicalAppApp')
  .controller 'QueuesCtrl', ($scope, ClinicService)->
    ClinicService.get (data) ->
      $scope.clinics = data.clinics
