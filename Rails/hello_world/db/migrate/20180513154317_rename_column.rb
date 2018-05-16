class RenameColumn < ActiveRecord::Migration[5.2]
  def change
  	rename_column :posts, :title, :tile_post
  end
end
