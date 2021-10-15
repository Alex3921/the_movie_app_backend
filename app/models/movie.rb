class Movie < ApplicationRecord
  has_many :reviews
  accepts_nested_attributes_for :reviews

  def self.call
    HTTParty.get("https://api.themoviedb.org/3/discover/movie?api_key=#{ENV['TMDB_API_KEY']}&language=en-US&sort_by=popularity.desc&page=1")
  end

  def self.search(query)
    title = Movie.arel_table[:title]
    Movie.where(title.matches("%#{query}%"))
    # HTTParty.get("https://api.themoviedb.org/3/search/movie?api_key=#{ENV['TMDB_API_KEY']}&language=en-US&query=#{query}&page=1&include_adult=false")
  end
end

