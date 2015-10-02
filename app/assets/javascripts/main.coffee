$ ->

  # NAVIGATION BAR MOBILE MENU
  $('#navbar-collapse').click ->
    $('.menu-xs').toggleClass 'active'

  # LEFT PANEL TOGGLE
  $('#left-panel-icon').click ->
    leftPanelContainer = $ '#left-panel'
    leftPanelContainer.toggleClass 'active'

  # INDEX PAGE SWIPERS
  $('.hidden-md.hidden-lg.swiper-container').each (swiper) ->
    id = $(this).attr 'swiper-id'
    new Swiper '.swiper-container[swiper-id='+id+']',
      nextButton: '.swiper-container[swiper-id='+id+']'+ ' .swiper-button-next',
      prevButton: '.swiper-container[swiper-id='+id+']'+ ' .swiper-button-prev',
      pagination: '.swiper-container[swiper-id='+id+']'+ ' .swiper-pagination',
      grabCursor: true

  # CLOSE LEFT PANEL WHEN CLICKED REST OF THE PAGE
  $('#main-page').click () ->
    if $('#left-panel').hasClass('active')
      $('#left-panel').removeClass('active');