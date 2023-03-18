class MoviesController < ApplicationController
  def show
    @movie = Movie.find(params[:id])
    authorize @movie
  end

  def index
    @movies = policy_scope(Movie)
    @bookmark = Bookmark.new
  end
end
