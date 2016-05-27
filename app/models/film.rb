class Film < ActiveRecord::Base
  validates :title, :user_id, :category_id, presence: true

  belongs_to :category
  belongs_to :user
  has_many :ratings
  has_many :reviews


  def judge_rating 
    self.ratings.reduce(0) { |sum, rating| sum += rating.user.judge ? rating.score : 0 }
  end

  def user_rating
    self.ratings.reduce(0) { |sum, rating| sum += !rating.user.judge ? rating.score : 0 }
  end

  def judge_count 
    judge_rating_count = self.ratings.find_all { |rating| rating.user.judge == true }.length
  end

  def user_count
    non_judge_rating_count = self.ratings.find_all { |rating| rating.user.judge != true }.length
  end

  def judge_average
    if judge_rating > 0 && judge_count > 0
      judge_rating / judge_count
    else
      0
    end
  end

  def user_average
    if user_rating > 0 && user_count > 0
      user_rating / user_count
    else
      0
    end
  end

  def average_rating
    if self.ratings.length > 0
      ((judge_average * 0.8) + (user_average * 0.2)).round(1)
    elsif self.ratings.length == 0
      0
    end
  end

  def judge_review
    self.reviews.find_all { |review| review.user.judge == true }
  end

  def user_review
    self.reviews.find_all { |review| review.user.judge == false }
  end

end
