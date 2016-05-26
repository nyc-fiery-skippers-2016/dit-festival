class Rating < ActiveRecord::Base
	belongs_to :user
	belongs_to :film

	validates :score, presence: true

	JUDGE_SCORE = [1, 2, 3, 4, 5]
	USER_SCORE = [1, 1.5, 2, 2.5, 3, 3.5, 4, 4.5, 5]
end
