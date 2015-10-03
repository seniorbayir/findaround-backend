#encoding : utf-8
module CompaniesHelper
  def CompaniesHelper::get_company id
    company = OpenStruct.new
    company.name = 'Joe’s Electronics Workshop'
    company.supplychain = 'Retail Store, Distributor'
    company.type = 'Electronics Department, Coffee Shop'
    company.location = { langtitude: 32, longitude: 32, address: 'Camii’nin yanindaki sokaktan girince, sergi’yi gecince sagdayiz hemen.', distance: 250 }
    company.hours = [ ['07:00', '22:00'], ['07:00', '22:00'], ['07:00', '22:00'], ['07:00', '22:00'], ['07:00', '22:00'], true, false ]
    company.media = ['http://c8.alamy.com/comp/E8J7A2/brazilian-slipper-shop-E8J7A2.jpg', 'http://i.istockimg.com/file_thumbview_approve/17400505/2/stock-photo-17400505-weave-slippers-set-shelves-shop.jpg', 'http://www.slipperstore.co.uk/images/factory_shop_in_pontlottyn.jpg' ]
    company.voteCount = 421
    company.vote = 'B+'
    company
  end
end