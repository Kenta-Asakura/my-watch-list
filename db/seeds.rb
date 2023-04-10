# Movie.destroy_all

# tmbd apikey = b53c36fe92aca91408d106a8a0f1dac8

# for search query params
# https://api.themoviedb.org/3/search/movie?api_key={api_key}&query=Jack+Reacher

# top rated movies list
# https://api.themoviedb.org/3/movie/top_rated?api_key=b53c36fe92aca91408d106a8a0f1dac8&language=en-US&page=1

# movie sample = https://api.themoviedb.org/3/movie/157336?api_key=b53c36fe92aca91408d106a8a0f1dac8

# def create_movie(title, overview, poster_path, vote_average)
#   movie = Movie.new
  # url = 'https://api.themoviedb.org/3/movie/top_rated?api_key=b53c36fe92aca91408d106a8a0f1dac8&language=en-US&page=1'
  # user_serialized = URI.open(url).read
  # user = JSON.parse(user_serialized)
  # toprated_array = user['results']

  # movie.title = result['title']
  # movie.overview = result['overview']
  # movie.poster_url = result['poster_path']
  # movie.rating = result['vote_average']

  # movie.title = title['title']
  # movie.overview = overview['overview']
  # movie.poster_url = poster_path['poster_path']
  # movie.rating = vote_average['vote_average']
#   movie.title = title
#   movie.overview = overview
#   movie.poster_url = poster_path
#   movie.rating = vote_average
#   movie.save
# end

# url = 'https://api.themoviedb.org/3/movie/top_rated?api_key=b53c36fe92aca91408d106a8a0f1dac8&language=en-US&page=1'
# user_serialized = URI.open(url).read
# user = JSON.parse(user_serialized)
# toprated_array = user['results']
# toprated_array.each do |result|
#   p create_movie(result['title'], result['overview'], result['poster_path'], result['vote_average'])
# end

puts 'Creating movies'

# FetchMovie.new.create_movies('top_rated')
# FetchMovie.new.create_movies('now_playing')
