@Mebel = new Mongo.Collection('mebel')


MebelSchema = new SimpleSchema
  name:
    type: String
    label: 'Название мебели'
    trim: true

Mebel.attachSchema MebelSchema


Mebel.allow
  insert: (userId, mebel) ->
    true
  update: (userId, mebel, fields, modifier) ->
    true
  remove: (userId, mebel) ->
    true
