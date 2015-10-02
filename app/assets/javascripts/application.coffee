# This is a manifest file that'll be compiled into application.js, which will include all the files
# listed below.
#
# Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
# or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
#
# It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
# compiled file.
#
# Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
# about supported directives.
#
# = require jquery-2.1.4.min
# = require swiper.jquery.min
# = require turbolinks
# = require_tree .

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