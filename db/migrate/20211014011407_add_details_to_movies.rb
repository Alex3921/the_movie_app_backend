class AddDetailsToMovies < ActiveRecord::Migration[6.1]
  def change
    add_column :movies, :overview, :text
    add_column :movies, :vote_average, :integer
    add_column :movies, :poster_path, :string
  end
end
