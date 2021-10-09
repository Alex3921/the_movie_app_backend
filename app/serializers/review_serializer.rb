class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :author_name, :content, :stars, :movie_id, :created_at, :updated_at

  belongs_to :movie
end
