class User < ActiveRecord::Base
	has_many :films
	has_many :ratings
	has_many :reviews
	has_many :comments

	validates :username, presence: true
	validates :username, uniqueness: true

	has_secure_password
end
