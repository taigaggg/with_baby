class Parent < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'ママ' },
    { id: 3, name: 'パパ' },
  ]
  include ActiveHash::Associations
  has_many :users
end