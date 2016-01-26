'use strict'

angular.module 'mebelShopApp'
.controller 'MebelCtrl', ($scope) ->
  $scope.states_list = [
    {
      "name": "Alabama",
      "abbr": "AL"
    },
    {
      "name": "Alaska",
      "abbr": "AK"
    },
    {
      "name": "American Samoa",
      "abbr": "AS"
    },
    {
      "name": "Arizona",
      "abbr": "AZ"
    },
    {
      "name": "Arkansas",
      "abbr": "AR"
    },
    {
      "name": "California",
      "abbr": "CA"
    },
    {
      "name": "Colorado",
      "abbr": "CO"
    },
    {
      "name": "Connecticut",
      "abbr": "CT"
    }
  ];

  $scope.fields = [
    key: 'name'
    type: 'horizontalInput'
    templateOptions:
      label: 'Название мебели'
      required: true
  ]

  $scope.helpers
    mebel: () ->
      Mebel.find {}


  $scope.subscribe 'mebel'


  $scope.save = ->
    if $scope.form.$valid
      Mebel.insert $scope.model
      $scope.model.name = undefined
    return

  $scope.remove = (mebel) ->
    Mebel.remove
      _id: mebel._id
    return

  return

