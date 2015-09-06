class User < ActiveRecord::Base

  validates :email, {
    presence: true,
    format: {with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/ }, uniqueness: true
  }
  validates :password, {
    presence: true,
    length: { minimum: 4 }
  }

  def User::get_hash params
    params.require(:user).permit(:email, :password)
  end

end
