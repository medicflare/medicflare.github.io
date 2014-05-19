'use strict'

angular
  .module('medicalAppApp', [
    'ngCookies',
    'ngResource',
    'ngSanitize',
    'ui.router'
  ])
  .config ($stateProvider, $urlRouterProvider) ->
    $urlRouterProvider
      .otherwise('/coming_soon')

    # Layouts
    app_layout =
      name: 'app'
      templateUrl: 'views/layouts/app.html'
    full_width_layout =
      name: 'full_width'
      template: '<div ui-view></div>'

    $stateProvider
      .state(app_layout)
      .state(full_width_layout)

      # Pages
#      .state 'main',
#        parent: app_layout,
#        url: '/',
#        templateUrl: 'views/main.html',
#        controller:  'MainCtrl'
      .state 'coming_soon',
        url: '/coming_soon'
        templateUrl: 'views/coming_soon.html'

#      # Clinic Pages
#      .state 'clinics',
#        parent: app_layout,
#        url: '/clinics',
#        templateUrl: 'views/clinics/index.html',
#        controller:  'ClinicIndexCtrl'
#      .state 'clinic',
#        parent: app_layout,
#        url: '/clinics/:clinicId',
#        templateUrl: 'views/clinics/show.html',
#        controller:  'ShowClinicCtrl'
#      .state 'clinic.sign_up',
#        parent: app_layout,
#        url: '/clinics/:clinicId/sign_up',
#        templateUrl: 'views/queues/sign_up.html',
#        controller:  'QueuesCtrl'
#      .state 'clinic.confirm',
#        parent: app_layout,
#        url: '/clinics/:clinicId/confirm',
#        templateUrl: 'views/queues/confirm.html',
#        controller:  'QueuesCtrl'
#
#      # Receptionists Pages
#      .state 'receptionists',
#        url: '/receptionists',
#        template: 'List of receptionists' #TODO: replace with real template later
#      .state 'receptionists.sign_in',
#        parent: app_layout,
#        url: '/receptionists/sign_in',
#        templateUrl: 'views/receptionists/sign_in.html',
#        controller: 'ReceptionistsCtrl'
#      .state 'receptionists.new',
#        parent: app_layout,
#        url: '/receptionists/new',
#        templateUrl: 'views/receptionists/new.html',
#        controller: 'ReceptionistsCtrl'
    return