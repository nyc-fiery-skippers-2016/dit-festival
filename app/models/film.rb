class Film < ActiveRecord::Base
  validates :title, :user_id, :category_id, presence: true

  belongs_to :category
  belongs_to :user
  has_many :ratings
  has_many :reviews

   def avg_rating
    self.ratings.sum(:score)/self.ratings.length
  end

end
