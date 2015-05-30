class AddTagToNews < ActiveRecord::Migration
  def change
    add_column :news, :tag, :String
  end
end
