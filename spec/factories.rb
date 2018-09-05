FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    username { Faker::Artist.name }
    password  { "password" }
    password_confirmation { "password" }
  end

  factory :membership do
    association :user
    association :group
  end

  factory :group do
    name { Faker::Pokemon.name }
  end

  factory :category do
    association :user
    name { Faker::Pokemon.name }
    color { Faker::Color.rgb_color}
  end

  factory :folder do
    association :category
    parent_id { 1 }
    name { generate :folder_name }
  end

  sequence :folder_name do |n|
    "folder#{n}"
  end
end
