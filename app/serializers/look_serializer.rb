class LookSerializer < ActiveModel::Serializer
  attributes :id, :title, :lookURL
  belongs_to :user
  has_many :links
end
