class Review < ActiveRecord::Base
	belongs_to :user
	belongs_to :film

	validates :body, presence: true 
end