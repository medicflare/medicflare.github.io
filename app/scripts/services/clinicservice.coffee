'use strict'

angular.module('medicalAppApp')
  .service 'ClinicService',($resource) ->
    # AngularJS will instantiate a singleton by calling "new" on this function
    return $resource('data/clinics.json')

