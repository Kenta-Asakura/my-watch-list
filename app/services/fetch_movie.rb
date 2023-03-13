require "open-uri"

class FetchMovie
  def create_movies(category)
    grouping = category
    url = "https://api.themoviedb.org/3/movie/#{grouping}?api_key=b53c36fe92aca91408d106a8a0f1dac8&language=en-US&page=1"
    user_serialized = URI.open(url).read
    user = JSON.parse(user_serialized)
    toprated_array = user['results']
    toprated_array.each do |result|
    movie = Movie.new(
      # title: @title
      group: grouping,
      title: result['title'],
      overview: result['overview'],
      poster_url: result['poster_path'],
      rating: result['vote_average']
    )
    movie.save
  end
  end
end
