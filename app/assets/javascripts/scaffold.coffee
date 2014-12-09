 # From http://webdesignerwall.com/tutorials/mobile-navigation-design-tutorial
 $ ->
  $('.mobile-nav-toggle').on("click", ->
    $('#site-nav').toggleClass("active")
    false
  )
