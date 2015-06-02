class News < ActiveRecord::Base
	validates :title, presence: true
	#has_attached_file :pic1, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
    #validates_attachment_content_type :pic1, :content_type => /\Aimage\/.*\Z/
    has_attached_file :pic1, :styles => { :medium => "300x300>", :thumb => "100x100>" }
    validates_attachment_content_type :pic1, :content_type => %w(image/jpeg image/jpg image/png )
end
