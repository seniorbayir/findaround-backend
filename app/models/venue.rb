class Venue < ActiveRecord::Base

  has_many :products, inverse_of: :venue, dependent: :destroy
  has_many :reviews, through: :products
  belongs_to :user, inverse_of: :venue

  validates :user, { presence: true }
  validates :name, { presence: true, length: { minimum: 3, maximum: 50 } }

  def as_hash
    hash = self.attributes
    hash[:products] = self.products
    hash[:reviews] = self.reviews
    hash[:user] = self.user
    hash
  end

  def Venue::get_hash params
    params.permit :name, :user_id
  end

end
