 'use strict'
 angular.module('mebelShopApp').config (formlyConfigProvider)->
   formlyConfigProvider.setWrapper
      name: 'horizontalBootstrapLabel'
      templateUrl: 'client/mebel/templates/horizontalLabel.html'
   formlyConfigProvider.setType
      name: 'horizontalInput'
      extends: 'input'
      wrapper: ['horizontalBootstrapLabel','bootstrapHasError']
   formlyConfigProvider.setType
      name: 'ui-select'
      extends: 'select'
      templateUrl: 'client/mebel/templates/uiSelect.html'
   return
