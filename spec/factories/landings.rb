# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :landing do
    collect_emails "MyString"
  end
end
