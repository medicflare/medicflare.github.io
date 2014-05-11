'use strict'

angular.module('medicalAppApp')
  .factory 'QueueService',($http) ->
    return {
      requestConfirmation: (patient) ->
        $http
          .post('/request', patient)
      confirm: (patient, confirmation) ->
        $http
          .post('/confirm', patient, confirmation)
    }
