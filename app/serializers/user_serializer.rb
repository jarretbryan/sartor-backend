class UserSerializer < ActiveModel::Serializer
  attributes :id, :username

  has_many :looks
end
