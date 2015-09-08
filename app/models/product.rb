class Product < ActiveRecord::Base

  belongs_to :venue, inverse_of: :products
  has_many :reviews, inverse_of: :product
  has_many :orders, inverse_of: :product
  has_many :users, through: :orders

  validates :name, { presence: true, length: { minimum: 3, maximum: 50 } }
  validates :price, { numericality: { greater_than_or_equal_to: 0 } }
  validates :venue, { presence: true }

  def as_hash
    hash = self.attributes
    hash[:venue] = self.venue
    hash[:reviews] = self.reviews
    hash[:orders] = self.orders
    hash[:users] = self.users
    hash
  end

  def Product.get_hash params
    params.permit(:name, :price)
  end
end
