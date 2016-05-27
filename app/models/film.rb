class Film < ActiveRecord::Base
  validates :title, :user_id, :category_id, presence: true

  belongs_to :category
  belongs_to :user
  has_many :ratings
  has_many :reviews

  def avg_rating
    judge_ratings = self.ratings.reduce(0) { |sum, rating| sum += rating.user.judge ? rating.score : 0 }
    non_judge_ratings = self.ratings.reduce(0) { |sum, rating| sum += !rating.user.judge ? rating.score : 0 }
    judge_rating_count = self.ratings.find_all { |rating| rating.user.judge == true }.length
    non_judge_rating_count = self.ratings.find_all { |rating| rating.user.judge == false }.length

    judge_total = (judge_ratings.to_f * 0.80) / judge_rating_count
    non_judge_total = (non_judge_ratings.to_f * 0.20) / non_judge_rating_count

    if self.ratings.length > 1
     (judge_total + non_judge_total).round(1)
    elsif self.ratings.length == 0
      0
    else
      self.ratings.first.score
    end
  end

  def score
  	judge_ratings = self.ratings.reduce(0) { |sum, rating| sum += rating.user.judge ? rating.score : 0 }
  	non_judge_ratings = self.ratings.reduce(0) { |sum, rating| sum += !rating.user.judge ? rating.score : 0 }
  	judge_ratings + non_judge_ratings
	end

  def judge_review
    self.reviews.find_all { |review| review.user.judge == true }
  end

  def user_review
    self.reviews.find_all { |review| review.user.judge == false }
  end

end
