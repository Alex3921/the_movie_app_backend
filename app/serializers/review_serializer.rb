class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :author_name, :content, :stars, :created_at
  belongs_to :movie
end
