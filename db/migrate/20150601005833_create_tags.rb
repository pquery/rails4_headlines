class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.string :tag

      t.timestamps null: false
    end
  end
end
