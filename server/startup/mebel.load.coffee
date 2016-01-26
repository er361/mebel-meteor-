Meteor.startup ->
  if Mebel.find().count() == 0
    mebel = [
      {
        'name': 'mebel 1'
      }
      {
        'name': 'mebel 2'
      }
    ]
    mebel.forEach (mebel) ->
      Mebel.insert mebel