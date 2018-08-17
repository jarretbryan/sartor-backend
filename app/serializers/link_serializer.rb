class LinkSerializer < ActiveModel::Serializer
  attributes :id, :article, :linkURL
  belongs_to :look
end
