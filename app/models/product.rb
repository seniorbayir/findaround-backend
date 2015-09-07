class Product < ActiveRecord::Base

  belongs_to :user

  validates :name, { presence: true, length: { minimum: 3, maximum: 50 } }
  validates :price, { numericality: { greater_than_or_equal_to: 0 } }
  validates :user, { presence: true }

  def Product.get_hash params
    params.permit(:name, :price, :user_id)
  end
end
