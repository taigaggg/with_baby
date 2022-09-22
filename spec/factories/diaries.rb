FactoryBot.define do
  factory :diary do
    diary_title             {Faker::Lorem.sentence}
    diary_comment           {Faker::Lorem.sentence}
    diary_day               {'2022-01-01'}
    association :user

    after(:build) do |diary|
      diary.image.attach(io: File.open('public/images/test_image.png'), filename: 'image')
    end
  end
end
