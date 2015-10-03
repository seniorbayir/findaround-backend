#encoding : utf-8
module ProductsHelper

  # FETCH THE PRODUCT, PREPARE FOR THE VIEW AND RETURN
  def ProductsHelper::get_product id
    product = OpenStruct.new
    product.name = 'Product Name Line One and twodsa dasdsa dsa dsa dsa asds adsa dsa'
    product.price = 23
    product.currency_symbol = '$'
    # product.photo = 'http://c8.alamy.com/comp/E8J7A2/brazilian-slipper-shop-E8J7A2.jpg'
    product.photos = [
      'http://n4.sdlcdn.com/imgs/a/z/3/230x258/Nike-Black-Aquaswift-Men-Slippers-SDL808633603-1-47cb9.jpg',
      'http://staticx.ibncollege.com/wcsstore/ExtendedSitesCatalogAssetStore/819_81910_1_737004_NI/images/LARGEIMAGE_478265.jpg',
      'http://image.rakuten.co.jp/lead-s/cabinet/img12/nike-488160-1.jpg?_ex=60x60'
    ]
    product.folder = 'travel'
    product
  end

end