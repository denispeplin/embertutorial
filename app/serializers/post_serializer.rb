class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :date, :excerpt, :content
  has_one :author
end
