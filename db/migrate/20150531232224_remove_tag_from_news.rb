class RemoveTagFromNews < ActiveRecord::Migration
  def change
  	#remove_column :news, :tag, :String  <- This won't work in SQLlite 
  	add_column :news, :tag_id, :integer
  	add_foreign_key :news, :tags
  end
end
