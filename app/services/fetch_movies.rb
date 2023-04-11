class FetchMovies
  def create_movies(group)
    movie = Movie.new
    url = "https://api.themoviedb.org/3/movie/#{group}?api_key=b53c36fe92aca91408d106a8a0f1dac8&language=en-US&page=1"
    user_serialized = URI.open(url).read
    user = JSON.parse(user_serialized)
    result = user['results']

    result.each do |result|
      p create_movie(result['title'], result['overview'], result['poster_path'], result['vote_average'], group)
    end
  end
end
