#encoding : utf-8
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

  def root
    render 'static/index'
  end

  def venue
    @venue = {}
    @venue[:name] = 'Joe’s Electronics Workshop'
    @venue[:supplychain] = 'Retail Store, Distributor'
    @venue[:type] = 'Electronics Department, Coffee Shop'
    @venue[:location] = { langtitude: 32, longitude: 32, address: 'Camii’nin yanindaki sokaktan girince, sergi’yi gecince sagdayiz hemen.', distance: 250 }
    @venue[:hours] = [ ['07:00', '22:00'], ['07:00', '22:00'], ['07:00', '22:00'], ['07:00', '22:00'], ['07:00', '22:00'], true, false ]
    @venue[:media] = ['http://c8.alamy.com/comp/E8J7A2/brazilian-slipper-shop-E8J7A2.jpg', 'http://i.istockimg.com/file_thumbview_approve/17400505/2/stock-photo-17400505-weave-slippers-set-shelves-shop.jpg', 'http://www.slipperstore.co.uk/images/factory_shop_in_pontlottyn.jpg' ]
    @venue[:voteCount] = 421
    @venue[:vote] = 'B+'

    @reviews = []
    @reviews.push ({ 'vote' => 'B+', message: 'Fixie tote bag ethnic keytar. Neutra vinyl American Apparel kale chips tofu art party, cardigan raw denim quinoa. Cray paleo tattooed, Truffaut skateboard art PBR short', user: { name: 'Mark Bell', avatar: 'https://forum.codoh.com/images/avatars/avatar-blank01.jpg' }, product: { name: 'Product Name Line One and twodsa dasdsa dsa dsa dsa asds adsa dsa' } })
    @reviews.push({ vote: 'A-', message: 'Cray paleo tattooed, Truffaut skateboard art PBR short', user: { name: 'Brian Ferguson', avatar: 'https://forum.codoh.com/images/avatars/avatar-blank01.jpg' }, product: { name: 'Product Name Line One and twodsa dasdsa dsa dsa dsa asds adsa dsa' } })
    @reviews.push({ vote: 'C+', message: 'Cray paleo tattooed, Truffaut skateboard art PBR Truffaut skateboard art PBR Truffaut skateboard art PBR short', user: { name: 'Joseph Sims', avatar: 'https://forum.codoh.com/images/avatars/avatar-blank01.jpg' }, product: { name: 'Product Name Line One and twodsa dasdsa dsa dsa dsa asds adsa dsa' } })

    render 'static/venue'
  end

  def product
    @venue = {}
    @venue[:name] = 'Joe’s Electronics Workshop'
    @venue[:supplychain] = 'Retail Store, Distributor'
    @venue[:type] = 'Electronics Department, Coffee Shop'
    @venue[:location] = { langtitude: 32, longitude: 32, address: 'Camii’nin yanindaki sokaktan girince, sergi’yi gecince sagdayiz hemen.', distance: 250 }
    @venue[:hours] = [ ['07:00', '22:00'], ['07:00', '22:00'], ['07:00', '22:00'], ['07:00', '22:00'], ['07:00', '22:00'], true, false ]
    @venue[:media] = ['http://c8.alamy.com/comp/E8J7A2/brazilian-slipper-shop-E8J7A2.jpg', 'http://i.istockimg.com/file_thumbview_approve/17400505/2/stock-photo-17400505-weave-slippers-set-shelves-shop.jpg', 'http://www.slipperstore.co.uk/images/factory_shop_in_pontlottyn.jpg' ]
    @venue[:voteCount] = 421
    @venue[:vote] = 'B+'

    @reviews = []
    @reviews.push ({ 'vote' => 'B+', message: 'Fixie tote bag ethnic keytar. Neutra vinyl American Apparel kale chips tofu art party, cardigan raw denim quinoa. Cray paleo tattooed, Truffaut skateboard art PBR short', user: { name: 'Mark Bell', avatar: 'https://forum.codoh.com/images/avatars/avatar-blank01.jpg' }, product: { name: 'Product Name Line One and twodsa dasdsa dsa dsa dsa asds adsa dsa' } })
    @reviews.push({ vote: 'A-', message: 'Cray paleo tattooed, Truffaut skateboard art PBR short', user: { name: 'Brian Ferguson', avatar: 'https://forum.codoh.com/images/avatars/avatar-blank01.jpg' }, product: { name: 'Product Name Line One and twodsa dasdsa dsa dsa dsa asds adsa dsa' } })
    @reviews.push({ vote: 'C+', message: 'Cray paleo tattooed, Truffaut skateboard art PBR Truffaut skateboard art PBR Truffaut skateboard art PBR short', user: { name: 'Joseph Sims', avatar: 'https://forum.codoh.com/images/avatars/avatar-blank01.jpg' }, product: { name: 'Product Name Line One and twodsa dasdsa dsa dsa dsa asds adsa dsa' } })

    @product = {
      name: 'Product Name Line One and twodsa dasdsa dsa dsa dsa asds adsa dsa',
      description: 'I have hinted that I would often jerk poor Queequeg from between the whale and the ship—where he would occasionally fall, from the incessant rolling and swaying of both. But this was not the only jamming jeopardy he was exposed to. Unappalled by the massacre made upon them during the night, the sharks now freshly and more keenly allured by the before pent blood which began to flow from the carcass—.',
      price: 23,
      voteCount: 4,
      vote: 'B+',
      media: [ 'http://n4.sdlcdn.com/imgs/a/z/3/230x258/Nike-Black-Aquaswift-Men-Slippers-SDL808633603-1-47cb9.jpg', 'http://staticx.ibncollege.com/wcsstore/ExtendedSitesCatalogAssetStore/819_81910_1_737004_NI/images/LARGEIMAGE_478265.jpg', 'http://image.rakuten.co.jp/lead-s/cabinet/img12/nike-488160-1.jpg?_ex=60x60' ]
    }
    render 'static/product'
  end
end
