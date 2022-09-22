FactoryBot.define do
  factory :user do
    nickname              {Faker::Name}
    email                 {Faker::Internet.free_email}
    password              {'test11111'}
    password_confirmation {password}
    babyname              {Faker::Name}
    birthday              {'2022-01-01'}
    parent_id             {2}
    gender_id             {2}
  end
end