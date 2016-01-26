'use strict'

Meteor.publish 'category', () ->
  Category.find {}
