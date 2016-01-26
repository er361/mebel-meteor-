angular.module 'mebelShopApp', [
  'angular-meteor'
  'ui.router'
  'ui.bootstrap'
  'angularUtils.directives.dirPagination'
  'accounts.ui'
  'formly'
  'formlyBootstrap'
  'ui.select'
]

onReady = () ->
  angular.bootstrap document, ['mebelShopApp']
  
if Meteor.isCordova
  angular.element(document).on 'deviceready', onReady
else
  angular.element(document).ready onReady