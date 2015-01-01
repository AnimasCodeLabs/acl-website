 # From http://webdesignerwall.com/tutorials/mobile-navigation-design-tutorial
 $ ->
  $('.mobile-nav-toggle').on("click", ->
    $('#site-nav').toggleClass("active")
    false
  )

  $('.pages-home .featured-projects .project').on "click", ->
    false #Prevent clicks
