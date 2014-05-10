'use strict'

angular.module('medicalAppApp')
  .factory 'AuthService', ($http) ->
    currentUser = null
    return {
      login: (user) ->
        # This won't work until we have a real endpoint, naturally
        # I'm also taking a guess at the session response. Will likely
        # change
        $http
          .post('/receptionists/sign_in', user)
          .then () ->
            currentUser = user
      isAuthenticated: () ->
        return !!Session.userId
      currentUser: () ->
        return currentUser
    }
