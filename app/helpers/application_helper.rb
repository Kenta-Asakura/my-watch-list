module ApplicationHelper
  def bookmarked_by_current_user?(movie)
    current_user && current_user.bookmarks.exists?(movie_id: movie.id)
  end
end
