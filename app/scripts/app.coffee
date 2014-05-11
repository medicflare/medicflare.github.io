'use strict'

angular
  .module('medicalAppApp', [
    'ngCookies',
    'ngResource',
    'ngSanitize',
    'ngRoute'
  ])
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller:  'MainCtrl'

      # Clinics
      .when '/clinics',
        templateUrl: 'views/clinics/index.html'
        controller:  'ClinicIndexCtrl'
      .when '/clinics/:clinicId',
        templateUrl: 'views/clinics/show.html'
        controller:  'ShowClinicCtrl'

      # Receptionists
      .when '/clinics/:clinicId/sign_up',
        templateUrl: 'views/queues/sign_up.html'
        controller:  'QueuesCtrl'
      .when '/clinics/:clinicId/confirm',
        templateUrl: 'views/queues/confirm.html'
        controller:  'QueuesCtrl'
      .when '/receptionists/sign_in',
        templateUrl: 'views/receptionists/sign_in.html'
        controller: 'ReceptionistsCtrl'
      .when '/receptionists/new',
        templateUrl: 'views/receptionists/new.html'
        controller: 'ReceptionistsCtrl'

      .otherwise
        redirectTo: '/'
