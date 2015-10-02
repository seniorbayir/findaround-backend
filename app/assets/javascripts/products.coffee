$ ->

  # PHOTO GALLERY
  gallery = new Swiper '.product-page .swiper-container.gallery',
    nextButton: '.product-page .swiper-container.gallery .swiper-button-next'
    prevButton: '.product-page .swiper-container.gallery .swiper-button-prev'
    pagination: '.product-page .swiper-container.gallery .swiper-pagination'
    grabCursor: true

  # THUMBNAILS GALLERY
  galleryThumbs = new Swiper '.product-page .swiper-container.gallery-thumbs',
    direction: 'vertical'
    pagination: '.product-page .swiper-container.gallery-thumbs .swiper-pagination'
    spaceBetween: 5
    centeredSlides: true
    slidesPerView: 'auto'
    touchRatio: .2
    slideToClickedSlide: true
    nextButton: '.product-page .swiper-container.gallery .swiper-button-next'
    prevButton: '.product-page .swiper-container.gallery .swiper-button-prev'

  gallery.params.control = galleryThumbs
  galleryThumbs.params.control = gallery

  # PRODUCT NAVBAR ON SCROLL DOWN
  pos = $('.subtypes').offset().top
  $(window).scroll ->
    scrollTop = $(window).scrollTop()
    bar = $('.product-navbar-container');
    if scrollTop > pos && !bar.hasClass('active')
      bar.addClass('active')
    else if scrollTop < pos  && bar.hasClass('active')
      bar.removeClass('active')