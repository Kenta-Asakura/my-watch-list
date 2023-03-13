class AddGroupToMovie < ActiveRecord::Migration[7.0]
  def change
    add_column :movies, :group, :string
  end
end
