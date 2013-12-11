# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :collect_email, :class => 'CollectEmails' do
    email "MyString"
  end
end
