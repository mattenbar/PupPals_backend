class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :owner, :email, :pet_name, :about, :breed, :size, :sex, :age, :img
end
