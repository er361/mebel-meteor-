'use strict'

angular.module 'mebelShopApp'
.config ($stateProvider) ->
  $stateProvider
  .state 'mebel',
    url: '/mebel'
    templateUrl: 'client/mebel/mebel.view.html'
    controller: 'MebelCtrl'
