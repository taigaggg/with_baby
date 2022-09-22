class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  validates :nickname, presence: true
  validates :babyname, presence: true
  validates :birthday, presence: true

  # パスワード半角に英数字の必須を指定した
  VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i.freeze
  validates :password, format: { with: VALID_PASSWORD_REGEX }
  # /パスワード半角に英数字の必須を指定した

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :parent
  belongs_to :gender
  validates :parent_id, numericality: { other_than: 1 , message: "can't be blank"} 
  validates :gender_id, numericality: { other_than: 1 , message: "can't be blank"} 
end
