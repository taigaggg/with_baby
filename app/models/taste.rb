class Taste < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '大好き' },
    { id: 3, name: '好き' },
    { id: 4, name: '普通' },
    { id: 5, name: '苦手そう' },
    { id: 6, name: 'すごく苦手' },
  ]
  include ActiveHash::Associations
  has_many :meals
end