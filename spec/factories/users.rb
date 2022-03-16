FactoryBot.define do
  factory :user do
    japanese_user = Gimei.name

    nickname { Faker::Name.last_name }
    email { Faker::Internet.free_email }
    password = Faker::Lorem.characters(number: 10, min_alpha: 1, min_numeric: 1)
    password { password }
    password_confirmation { password }
    last_name { japanese_user.last.kanji }
    first_name { japanese_user.first.kanji }
    last_name_kana { japanese_user.last.katakana }
    first_name_kana { japanese_user.first.katakana }
    phone_number { Faker::Number.leading_zero_number(digits: 10) }
  end
end