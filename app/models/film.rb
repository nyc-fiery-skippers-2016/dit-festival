class Film < ActiveRecord::Base
  validates :title, :user_id, :category_id, presence: true

  belongs_to :category
  belongs_to :user
  has_many :ratings
  has_many :reviews

  def avg_rating
    self.ratings.sum(:score)/self.ratings.length
  end

  def score
  	judge_ratings = self.ratings.reduce(0) { |sum, rating| sum += rating.user.judge ? rating.score : 0 }
  	non_judge_ratings = self.ratings.reduce(0) { |sum, rating| sum += !rating.user.judge ? rating.score : 0 }
  	judge_ratings + non_judge_ratings / self.rating.length
	end

end
