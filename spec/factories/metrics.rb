# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :metric do
    name "MyString"
    units "MyString"
    frequency "MyString"
    seasonal false
    last_updated "2013-02-22"
  end
end
