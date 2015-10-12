#encoding : utf-8
module CompaniesHelper

  # FETCH THE COMPANY, PREPARE FOR THE VIEW AND RETURN
  def CompaniesHelper::get_company id
    if id === '1'
        company = OpenStruct.new
        company.name = 'Joe’s Electronics Workshop'
        company.user = OpenStruct.new
        company.user.name = 'Joe Hart'
        company.address = 'Camii’nin yanindaki sokaktan girince, sergi’yi gecince sagdayiz hemen.'
        company.phones = ['24325124234', '21424552']
        company.emails = ['joe_hart@gmail.com', 'gecelerin_yargici_joe@hotmail.com']
        company.website = ['www.joehart.com']
        company.city = 'San Fransisco'
        company.categories = ['halı', 'kilim', 'travel']
        company.gps = { langtitude: 32, longitude: 32}
        company.photos = [
            'http://c8.alamy.com/comp/E8J7A2/brazilian-slipper-shop-E8J7A2.jpg',
            'http://i.istockimg.com/file_thumbview_approve/17400505/2/stock-photo-17400505-weave-slippers-set-shelves-shop.jpg',
            'http://www.slipperstore.co.uk/images/factory_shop_in_pontlottyn.jpg'
        ]
        company.videos = []
        company.operating_hours = [ ['07:00', '22:00'], ['07:00', '22:00'], ['07:00', '22:00'], ['07:00', '22:00'], ['07:00', '22:00'], true, false ]
        company.folders = ['halı kilim', 'travel']
        company.products = []
        company
    elsif id == '2'

    else
        company = OpenStruct.new
        company.name = 'Joe’s Electronics Workshop'
        company.user = OpenStruct.new
        company.user.name = 'Joe Hart'
        company.address = 'Camii’nin yanindaki sokaktan girince, sergi’yi gecince sagdayiz hemen.'
        company.phones = ['24325124234', '21424552']
        company.emails = ['joe_hart@gmail.com', 'gecelerin_yargici_joe@hotmail.com']
        company.website = ['www.joehart.com']
        company.city = 'San Fransisco'
        company.categories = ['halı', 'kilim', 'travel']
        company.gps = { langtitude: 32, longitude: 32}
        company.photos = [
            'http://c8.alamy.com/comp/E8J7A2/brazilian-slipper-shop-E8J7A2.jpg',
            'http://i.istockimg.com/file_thumbview_approve/17400505/2/stock-photo-17400505-weave-slippers-set-shelves-shop.jpg',
            'http://www.slipperstore.co.uk/images/factory_shop_in_pontlottyn.jpg'
        ]
        company.videos = []
        company.operating_hours = [ ['07:00', '22:00'], ['07:00', '22:00'], ['07:00', '22:00'], ['07:00', '22:00'], ['07:00', '22:00'], true, false ]
        company.folders = ['halı kilim', 'travel']
        company.products = []
        company
    end
  end

end