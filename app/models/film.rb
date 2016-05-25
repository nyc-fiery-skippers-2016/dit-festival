class Film < ActiveRecord::Base
  validates :title, :user_id, :category_id, presence: true

  belongs_to :category
  belongs_to :user
  has_many :ratings
end
