'use strict'

angular.module('medicalAppApp')
  .controller 'QueuesCtrl', ($scope, $routeParams, $location, ClinicService, QueueService)->
    ClinicService.get (data) ->
      result = data.clinics.filter (obj) ->
        return obj.id == parseInt $routeParams.clinicId
      $scope.clinic = result[0]

    $scope.patient = {
      healthCard: ''
      firstName: ''
      lastName: ''
      phoneNumber: ''
    }

    $scope.confirmation = ''
    $scope.error = ''

    $scope.requestConfirmation = ->
      #QueueService.requestConfirmation($scope.patient)
      $location.path('clinics/' + $scope.clinic.id + '/confirm')

    $scope.confirm = ->
      #QueueService.confirm($scope.patient, $scope.confirmation)
      $location.path('clinics/' + $scope.clinic.id).search('success', 1)
