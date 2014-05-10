'use strict'

angular.module('medicalAppApp')
  .controller 'ClinicCtrl', ($scope) ->
  
    $scope.clinics = [
        { 
          	name:     "Clinic A",
          	location: "Waterloo, ON"
        },
        {
        	name:	  "Clinic B",
        	location: "Kitchener, ON"
        }
    ]


