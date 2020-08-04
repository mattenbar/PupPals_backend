class User < ApplicationRecord
  validates :email, uniqueness: { case_sensitive: false }
  validates :email, :owner, :pet_name, :breed, :size, :age, presence: true

  has_secure_password

  has_many :follows
  has_many :followed_users, through: :follows

  has_many :followers, foreign_key: :followed_user_id, class_name: 'Follow'
  has_many :follower_users, through: :followers, source: :user

end
