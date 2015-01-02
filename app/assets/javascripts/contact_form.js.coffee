$ ->
  $('#contact-form').validate
    rules:
      'first_name': 'required'
      'last_name': 'required'
      email:
        required: true
        email: true
      phone:
        required: true
      message:
        required: true

    submitHandler: (form) ->
      $(form).ajaxSubmit
        success: ->
          $(form).html("<h4>Thanks for the message. We look forward to talking with you shortly.</h4>")
        error: ->
          $(form).html("<p class='error'>Looks like we are having difficulty accepting messages right now. We still want to hear from you though.</p>
            <p class='error'>Please call us at (970) 403-5085.</p>")
      false




