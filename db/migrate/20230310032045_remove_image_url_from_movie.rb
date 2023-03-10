class RemoveImageUrlFromMovie < ActiveRecord::Migration[7.0]
  def change
    remove_column :movies, :image_url, :string
  end
end
