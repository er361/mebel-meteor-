'use strict'

angular.module 'mebelShopApp'
.config ($stateProvider) ->
  $stateProvider
  .state 'category',
    url: '/category'
    templateUrl: 'client/mebel/category/category.view.html'
    controller: 'CategoryCtrl'
    resolve:
      currentUser: ['$meteor', ($meteor) ->
        $meteor.requireUser()
      ]
