class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :height, :weight, :age, :goal
end
