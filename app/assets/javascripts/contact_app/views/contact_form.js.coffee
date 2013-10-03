class ContactApp.Views.ContactForm extends Backbone.View
  template: _.template('<form class="contact-app">
      <input class="name" name="message[name]" type="text" placeholder="Your Name" />
      <input class="email" name="message[email]"type="email" placeholder="Your Email" />
      <textarea class="body" name="message[body]" placeholder="Tell us about your project, or just drop us a line."></textarea>

      <input type="submit" value="Send us a message" />
    </form>
    ')

  initialize: ->
    @listenTo(@model, "error", @showErrors)
    @listenTo(@model, "sync", @renderSuccess)

  events: {
    submit: 'save'
  }

  render: ->
    $(@el).html(@template())

  save: (e)->
    e.preventDefault()
    newName = @.$('input[name=message\\[name\\]]').val()
    newEmail = @.$('input[name=message\\[email\\]]').val()
    newBody = @.$('textarea[name=message\\[body\\]]').val()
    @model.save( name: newName, email: newEmail, body: newBody)

  showErrors: (model, xhr, options) ->
    @hideErrors()
    errors = JSON.parse(xhr.responseText).errors
    for errorField in _.keys(errors)
      @.$('.'+errorField).addClass("error")

  hideErrors: ->
    @.$('.error').removeClass('error')


  renderSuccess: ->
    $(@el).html("<p>Thank you for your message.</p>")

