class MoviesController < ApplicationController
  def show
    @movie = Movie.find(params[:id])
    authorize @movie
  end

  def index
    @movies = policy_scope(Movie)
    @bookmarks = current_user.bookmarks.where(movie: @movies)
    # @bookmark = Bookmark.new
  end

  def now_playing
    @movies = Movie.where(group: 'now_playing')
    authorize @movies
    @bookmarks = current_user.bookmarks.where(movie_id: @movies.pluck(:id))
  end

  def top_rated
    @movies = Movie.where(group: 'top_rated')
    authorize @movies
    @bookmarks = current_user.bookmarks.where(movie_id: @movies.pluck(:id))
  end

  def upcoming
    @movies = Movie.where(group: 'upcoming')
    authorize @movies
    @bookmarks = current_user.bookmarks.where(movie_id: @movies.pluck(:id))
  end
end
