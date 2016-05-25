class Category < ActiveRecord::Base
	belongs_to :film

	validates :name, presence: true
end
