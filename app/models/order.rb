class Order < ActiveRecord::Base

  belongs_to :user
  belongs_to :product

  def as_hash
    hash = self.attributes
    hash[:user] = self.user
    hash[:product] = self.product
    hash
  end

end
