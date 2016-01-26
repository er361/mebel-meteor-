Meteor.startup ->
  if Category.find().count() == 0
    category = [
      {
        'name': 'category 1'
      }
      {
        'name': 'category 2'
      }
    ]
    category.forEach (category) ->
      Category.insert category