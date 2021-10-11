class TmdbApi
  def self.call
    HTTParty.get("https://api.themoviedb.org/3/discover/movie?api_key=#{ENV['TMDB_API_KEY']}&language=en-US&sort_by=popularity.desc&include_video=true&page=1&primary_release_year=2020")
  end

  def self.search(query)
    HTTParty.get("https://api.themoviedb.org/3/search/movie?api_key=#{ENV['TMDB_API_KEY']}&language=en-US&query=#{query}&page=1&include_adult=false")
  end
end