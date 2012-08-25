# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :ticket do
    title "MyString"
    body "MyText"
    end_user_id 1
    assigned_to_id 1
    assigned_to_type "MyString"
  end
end
