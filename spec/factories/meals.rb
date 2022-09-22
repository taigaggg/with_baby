FactoryBot.define do
  factory :meal do
    meal_title             {Faker::Lorem.sentence}
    meal_comment           {Faker::Lorem.sentence}
    meal_day               {'2022-01-01'}
    taste_id               {2}
    meal_time_id           {2}
    association :user

    after(:build) do |meal|
      meal.image.attach(io: File.open('public/images/test_image.png'), filename: 'image')
    end
  end
end
