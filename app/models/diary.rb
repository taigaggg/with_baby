class Diary < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  validates :image, presence: true
  validates :diary_title, presence: true, length: { maximum:50 }
  validates :diary_comment, presence: true, length: { maximum:1000 }
  validates :diary_day, presence: true

end
