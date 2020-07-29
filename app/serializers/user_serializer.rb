class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :owner, :email, :password, :pet_name, :about, :breed, :size, :sex, :age
end
