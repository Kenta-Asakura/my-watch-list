# class BookmarkService
#   include Pundit

#   def initialize(user, movie)
#     @user = user
#     @movie = movie
#   end

#   def create_bookmark
#     bookmark = Bookmark.new(user: @user, movie: @movie)
#     authorize bookmark

#     if bookmark.save
#       return bookmark
#     else
#       return nil
#     end
#   end

#   def delete_bookmark(bookmark)
#     authorize bookmark
#     bookmark.destroy
#   end
# end
