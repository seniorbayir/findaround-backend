class User < ActiveRecord::Base

  attr_accessor :password_again, :terms_and_conditions

  validates :email, { presence: true, format: {with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/ }, uniqueness: true }
  validates :password, { presence: true, length: { minimum: 4 } }
  validates :password_again, { presence: true, length: { minimum: 4 } }
  validates :terms_and_conditions, { presence: true, acceptance: { accept: 'true' } }
  validate :passwords_equal

  def User::get_hash params
    params.permit(:email, :password, :password_again, :terms_and_conditions)
  end

  def passwords_equal
    unless password == password_again
      errors.add(:passwords, "passwords not equal p1: #{password} p2: #{password_again}")
    end
  end

end
