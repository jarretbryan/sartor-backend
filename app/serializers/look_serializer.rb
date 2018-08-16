class LookSerializer < ActiveModel::Serializer
  attributes :id, :title, :lookURL
  belongs_to :user
end
