class User < ApplicationRecord
  validates :email, uniqueness: { case_sensitive: false }
  validates :email, :owner, :pet_name, :breed, :size, :age, presence: true

  has_secure_password


end
