class AddAttachmentPic1ToNews < ActiveRecord::Migration
  def self.up
    change_table :news do |t|
      t.attachment :pic1
    end
  end

  def self.down
    remove_attachment :news, :pic1
  end
end
