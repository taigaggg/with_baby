class Diary < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  validates :image, presence: true
  validates :diary_title, presence: true, length: { maximum:50 }
  validates :diary_comment, presence: true, length: { maximum:1000 }
  validates :diary_day, presence: true

  # # 日付の書き方(日付 YYYY-MM-DD)の必須を指定した
  # DIARY_DAY = /\A\d{4}-\d{2}-\d{2}\z/
  # validates :diary_day, format: { with: DIARY_DAY }
  # # /日付の書き方(日付 YYYY-MM-DD)の必須を指定した

end
