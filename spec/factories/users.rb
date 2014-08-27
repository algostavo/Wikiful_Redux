# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    name       "John Smith"
    email      "user@example.com"
    password   "newpassword"
  end
end
