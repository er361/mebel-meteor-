'use strict'

angular.module 'mebelShopApp'
.config ($stateProvider) ->
  $stateProvider
  .state 'about',
    url: '/about'
    templateUrl: 'client/about/about.view.html'
    controller: 'AboutCtrl'
