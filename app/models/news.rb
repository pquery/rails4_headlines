class News < ActiveRecord::Base
	has_many :tags
	validates :title, presence: true
end
