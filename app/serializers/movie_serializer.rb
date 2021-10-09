class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :external_id
  has_many :reviews
end
