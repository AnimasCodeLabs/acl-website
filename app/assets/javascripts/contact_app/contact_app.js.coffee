@ContactApp =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: (element)->
    @newMessage = new ContactApp.Models.Message()
    @contactForm = new ContactApp.Views.ContactForm(el: element, model: @newMessage)
    @contactForm.render()
    

$ ->
  if $('#contact-form').length > 0
    ContactApp.initialize($('#contact-form').first())
