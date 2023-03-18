class RemoveListFromBookmarks < ActiveRecord::Migration[7.0]
  def change
    remove_reference :bookmarks, :list, null: false, foreign_key: true
  end
end
