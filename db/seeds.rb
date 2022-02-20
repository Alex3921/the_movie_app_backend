require 'csv'

movies = CSV.parse(File.read(Rails.root.join('lib', 'seeds', 'movies.csv')), headers: true, encoding: 'ISO-8859-1')

movies.each do |m|
    movie = Movie.new
    movie.title = m['title']
    movie.overview = m['overview']
    movie.vote_average = m['vote_average']
    movie.poster_path = m['poster_path']
    movie.external_id = m['external_id']

    movie.save
end


reviews = CSV.parse(File.read(Rails.root.join('lib', 'seeds', 'reviews.csv')), headers:true, encoding: 'ISO-8859-1')

reviews.each do |r|
    review = Review.new
    review.author_name = r['author_name']
    review.content = r['content']
    review.stars = r['stars']
    review.movie_id = r['movie_id']

    review.save
end