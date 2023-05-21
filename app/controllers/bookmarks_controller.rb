class BookmarksController < ApplicationController
  before_action :set_movie, only: [:create]

  def index
    @bookmarks = policy_scope(Bookmark)
  end

  def create
    @movie = Movie.find(params[:movie_id])
    @bookmark = Bookmark.new(user: current_user, movie: @movie)
    authorize @bookmark

    respond_to do |format|
      if @bookmark.save
        format.html { redirect_to movies_path, notice: 'Bookmark was successfully created.' }
        format.js   # This will render create.js.erb
      else
        format.html { redirect_to movies_path, alert: 'Failed to create bookmark.' }
        format.js   # This will render create.js.erb
      end
    end
  end

  # def destroy
  #   @bookmark = Bookmark.find(params[:id])
  #   authorize @bookmark

  #   if @bookmark.destroy
  #     redirect_to movies_path, notice: 'Bookmark was successfully deleted.'
  #   else
  #     redirect_to movies_path, alert: 'Failed to delete bookmark.'
  #   end
  # end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    authorize @bookmark

    respond_to do |format|
      if @bookmark.destroy
        format.html { redirect_to movies_path, notice: 'Bookmark was successfully deleted.' }
        format.js   # This will render destroy.js.erb
      else
        format.html { redirect_to movies_path, alert: 'Failed to delete bookmark.' }
        format.js   # This will render destroy.js.erb
      end
    end
  end

  private

  def bookmarked_by_current_user?(movie)
    current_user.bookmarks.exists?(movie_id: movie.id)
  end

  def set_movie
    @movie = Movie.find(params[:movie_id])
  end
end
