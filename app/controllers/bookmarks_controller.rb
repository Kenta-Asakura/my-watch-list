class BookmarksController < ApplicationController
  def index
    @bookmarks = policy_scope(Bookmark)
  end

  # def new
  #   # @movie = movie.find(params[:movie_id])
  #   @bookmark = Bookmark.new
  #   authorize @bookmark
  # end

  def create
    @movie = Movie.find(params[:movie_id])
    @bookmark = Bookmark.new
    @bookmark.movie = @movie
    authorize @bookmark
    @bookmark.save
    # else
    #   render :new, status: :unprocessable_entity
  end

  def destroy
    @bookmark = Bookmark.find(params[:movie_id])
    @bookmark.destroy
    redirect_to movie_path(@bookmark.movie), status: :see_other
  end
end
