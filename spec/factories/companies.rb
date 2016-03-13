FactoryGirl.define do
  factory :company do
    name { Faker::Company.name }
    country_code { ISO3166::Country.translations.keys.sample }
  end
end
