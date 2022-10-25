class Movie < ActiveRecord::Base
  def self.find_similar_movies movie_title
    movie = Movie.find {|x| x.title == movie_title}
    director = movie.director
    if director.nil? or director.blank? 
      return nil
    end
    movies = Movie.where(:director => director) 
  end
end
