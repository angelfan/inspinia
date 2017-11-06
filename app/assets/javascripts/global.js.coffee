$(document).on "turbolinks:load", ->
  if $(this).width() < 769
    $('body').addClass('body-small')
  else
    $('body').removeClass('body-small')
    
  localStorageFunc()
  fixHeight()
  $('.navbar-minimalize').on 'click', (event) ->
    event.preventDefault()
    $("body").toggleClass("mini-navbar")
    SmoothlyMenu()
    
  $('#side-menu').metisMenu()
  
  $('.close-link').on 'click', ->
    content = $(this).closest('div.ibox')
    content.remove()

  $('.collapse-link').on 'click', ->
    ibox = $(this).closest('div.ibox')
    button = $(this).find('i')
    content = ibox.children('.ibox-content')
    content.slideToggle(200)
    button.toggleClass('fa-chevron-up').toggleClass('fa-chevron-down')
    ibox.toggleClass('').toggleClass('border-bottom')
    setTimeout((->
      ibox.resize()
      ibox.find('[id^=map-]').resize()
    ), 50)

  if ($("body").hasClass('fixed-sidebar'))
    $('.sidebar-collapse').slimScroll({
        height: '100%',
        railOpacity: 0.9
    })
    
localStorageFunc = ->
  if localStorageSupport()
    collapse = localStorage.getItem("collapse_menu")
    fixedsidebar = localStorage.getItem("fixedsidebar")
    fixednavbar = localStorage.getItem("fixednavbar")
    boxedlayout = localStorage.getItem("boxedlayout")
    fixedfooter = localStorage.getItem("fixedfooter")
    body = $('body')
    if (fixedsidebar == 'on')
      body.addClass('fixed-sidebar')
      $('.sidebar-collapse').slimScroll({
          height: '100%',
          railOpacity: 0.9
      })

    if (collapse == 'on')
      if (body.hasClass('fixed-sidebar'))
        if (!body.hasClass('body-small'))
            body.addClass('mini-navbar')
      else
        if (!body.hasClass('body-small'))
            body.addClass('mini-navbar')

    if (fixednavbar == 'on')
      $(".navbar-static-top").removeClass('navbar-static-top').addClass('navbar-fixed-top')
      body.addClass('fixed-nav')

    if (boxedlayout == 'on')
      body.addClass('boxed-layout')

    if (fixedfooter == 'on')
      $(".footer").addClass('fixed')
      
localStorageSupport = ->
  ('localStorage' of window) && window['localStorage'] != null

SmoothlyMenu = ->
  if !$('body').hasClass('mini-navbar') || $('body').hasClass('body-small')
    $('#side-menu').hide()
    setTimeout((->
      $('#side-menu').fadeIn(400)
    ), 200)
  else if $('body').hasClass('fixed-sidebar')
    $('#side-menu').hide()
    setTimeout((->
      $('#side-menu').fadeIn(400)
    ), 100)
  else
    $('#side-menu').removeAttr('style')

fixHeight = ->
  heightWithoutNavbar = $("body > #wrapper").height() - 61
  $(".sidebar-panel").css("min-height", heightWithoutNavbar + "px")
  navbarheight = $('nav.navbar-default').height()
  wrapperHeight = $('#page-wrapper').height()
  if (navbarheight > wrapperHeight)
    $('#page-wrapper').css("min-height", navbarheight + "px");
  if (navbarheight < wrapperHeight)
    $('#page-wrapper').css("min-height", $(window).height() + "px")
  if ($('body').hasClass('fixed-nav'))
    if (navbarheight > wrapperHeight)
      $('#page-wrapper').css("min-height", navbarheight + "px")
    else
      $('#page-wrapper').css("min-height", $(window).height() - 60 + "px")
