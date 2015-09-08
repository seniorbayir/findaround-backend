class Review < ActiveRecord::Base

  belongs_to :user, inverse_of: :reviews
  belongs_to :product, inverse_of: :reviews

  validates :user, { presence: true }
  validates :product, { presence: true }

  def as_hash
    hash = self.attributes
    hash[:user] = self.user
    hash[:product] = self.product
    hash
  end

  def Review::get_hash params
    params.permit :content
  end

end
