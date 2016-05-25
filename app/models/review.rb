class Review < ActiveRecord::Base
	belongs_to :user
	belongs_to :film

  has_many :comments

	validates :body, presence: true 
end
