class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :parent
  belongs_to :gender
  validates :parent_id, numericality: { other_than: 1 , message: "can't be blank"} 
  validates :gender_id, numericality: { other_than: 1 , message: "can't be blank"} 
end