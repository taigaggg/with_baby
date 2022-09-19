class Meal < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  validates :image, presence: true
  validates :meal_title, presence: true, length: { maximum:50 }
  validates :meal_comment, presence: true, length: { maximum:1000 }

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :taste
  belongs_to :meal_time
  validates :taste_id, numericality: { other_than: 1 , message: "can't be blank"} 
  validates :meal_time_id, numericality: { other_than: 1 , message: "can't be blank"} 
end
