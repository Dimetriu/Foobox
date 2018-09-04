FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    username { Faker::Artist.name }
    password "password"
    password_confirmation "password"
  end

  factory :membership do
    user_id { 1 }
    group_id { 1 }
  end

  factory :group, aliases: [:category] do
    name { Faker::Educator.subject }
  end
end
