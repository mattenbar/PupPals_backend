class User < ApplicationRecord
  validates :email, uniqueness: true
  validates :email, :owner, :pet_name, :breed, :size, :age, :city, :state, presence: true

  has_secure_password


end
