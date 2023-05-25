if @bookmark.persisted?
  json.form render(partial: "bookmarks/form", formats: :html, locals: {movie: @movie, bookmark: Bookmark.new})
  json.inserted_item render(partial: "movies/bookmark", formats: :html, locals: {bookmark: @bookmark})
else
  json.form render(partial: "bookmarks/form", formats: :html, locals: {movie: @movie, bookmark: @bookmark})
end
