class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many(:blogs)

  has_many(:follows, foreign_key: :following_user_id)
  has_many(:followed_users, through: :follows, class_name: 'User')
end
