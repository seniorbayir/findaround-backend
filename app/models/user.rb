class User < ActiveRecord::Base

  has_one :venue, inverse_of: :user
  has_many :reviews, inverse_of: :user, dependent: :destroy
  has_many :orders, inverse_of: :user
  has_many :products, through: :orders

  attr_accessor :password_again

  validates :email, { presence: true, format: {with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/ }, uniqueness: true }
  validates :password, { presence: true, length: { minimum: 4 } }
  validates :password_again, { presence: true, length: { minimum: 4 }, on: :create }
  validate :passwords_equal, on: :create

  def as_hash
    hash = self.attributes
    hash[:venue] = self.venue
    hash[:reviews] = self.reviews
    hash[:products] = self.products
    hash[:orders] = self.orders
    hash
  end

  before_save do
    if self.changed.include?  'password'
      self.password = BCrypt::Password.create(password)
    end
  end

  def User::get_hash params
    params.permit(:email, :password, :password_again)
  end

  def passwords_equal
    unless password == password_again
      errors.add(:passwords, "passwords not equal p1: #{password} p2: #{password_again}")
    end
  end

end
