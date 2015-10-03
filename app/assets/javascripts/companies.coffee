$ ->

  # PHOTO GALLERY
  venueGallery = new Swiper '.company-page .swiper-container.gallery',
    nextButton: '.company-page .swiper-container.gallery .swiper-button-next'
    prevButton: '.company-page .swiper-container.gallery .swiper-button-prev'
    pagination: '.company-page .swiper-container.gallery .swiper-pagination'
    grabCursor: true

  # THUMBNAILS GALLERY
  venueGalleryThumbs = new Swiper '.company-page .swiper-container.gallery-thumbs',
    pagination: '.company-page .swiper-container.gallery-thumbs .swiper-pagination'
    spaceBetween: 5
    centeredSlides: true
    slidesPerView: 'auto'
    touchRatio: .2
    slideToClickedSlide: true

  venueGallery.params.control = venueGalleryThumbs
  venueGalleryThumbs.params.control = venueGallery

  # COMPANY LOCATION ON GOOGLE MAP
  window.initMap = () ->
    loc = new google.maps.LatLng 41.008207, 28.967440
    map = new google.maps.Map $('#map')[0],
      center: loc
      zoom: 17