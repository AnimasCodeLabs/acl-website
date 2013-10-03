class ContactApp.Models.Message extends Backbone.Model
  urlRoot: '/messages'

  toJSON: ->
    message: _.clone(@attributes)
