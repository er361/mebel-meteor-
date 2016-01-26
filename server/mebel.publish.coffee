'use strict'

Meteor.publish 'mebel', () ->
  Mebel.find {}