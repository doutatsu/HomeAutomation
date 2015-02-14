# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :event do
    sequence(:name) { |n| "Event #{n}"}
    td "Sensor 1"
    tds "Off"
    ad "Kitchen Lights"
    ads "Off"
  end
end
