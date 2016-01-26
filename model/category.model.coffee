@Category = new Mongo.Collection('category')

CategorySchema = new SimpleSchema
  name:
    type: String
    label: 'Название категории'

Category.allow
  insert: (userId, category) ->
    userId
  update: (userId, category, fields, modifier) ->
    userId
  remove: (userId, category) ->
    userId
