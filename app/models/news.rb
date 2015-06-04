class News < ActiveRecord::Base
	validates :title, presence: true
    has_attached_file :pic1, :styles => { :medium => "300x300>", :thumb => "100x100>" }
    validates_attachment_content_type :pic1, :content_type => %w(image/jpeg image/jpg image/png )
    resourcify
end
