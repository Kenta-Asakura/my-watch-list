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
end
