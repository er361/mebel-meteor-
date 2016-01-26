'use strict'

angular.module 'mebelShopApp'
.controller 'CategoryCtrl', ($scope) ->
  $scope.viewName = 'Category'
  $scope.fields = [
    key: 'name'
    type: 'horizontalInput'
    templateOptions:
      label: 'Название категории'
      require: true
  ]

  $scope.helpers
    category: () ->
      Category.find {}

  $scope.subscribe 'category'

  $scope.save = ->
    if $scope.form.$valid
      Category.insert $scope.model
      $scope.model.name = undefined

  $scope.remove = (cat) ->
    Category.remove
      _id: cat._id



