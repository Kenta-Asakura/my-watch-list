class BookmarksController < ApplicationController
  before_action :set_movie, only: [:create]

  def index
    # @movie = Movie.find(params[:movie_id])
    @bookmarks = policy_scope(Bookmark)
    # @bookmarks = current_user.bookmarks
  end

  def create
    @movie = Movie.find(params[:movie_id])
    @bookmark = Bookmark.new(user: current_user, movie: @movie)
    authorize @bookmark
    if @bookmark.save
      flash[:notice] = 'Bookmark was successfully created.'
    end

    @bookmark = Bookmark.find(params[:id])
    # @bookmark = Bookmark.find_by(user: current_user, movie: @movie)
    if @bookmark
      @bookmark.destroy
    else
      @bookmark = Bookmark.new(user: current_user, movie: @movie)
      authorize @bookmark
      @bookmark.save
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    authorize @bookmark
    @bookmark.destroy
    flash[:notice] = "Bookmark was successfully deleted."
  end

  private

  def bookmarked_by_current_user?(movie)
    current_user.bookmarks.exists?(movie_id: movie.id)
  end

  def set_movie
    @movie = Movie.find(params[:movie_id])
  end
end
