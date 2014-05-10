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
      .when '/clinics',
        templateUrl: 'views/clinics/index.html'
        controller:  'ClinicIndexCtrl'
      .when '/clinics/:clinicId',
        templateUrl: 'views/clinics/show.html'
        controller:  'ShowClinicCtrl'
      .otherwise
        redirectTo: '/'

