class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :overview, :poster_path, :vote_average
  has_many :reviews
end
