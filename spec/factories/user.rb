FactoryGirl.define do
  sequence :email do |n|
    "tikky_#{n}@example.com"
  end

  factory :user do
    email
    name "Tikky Shiwala"
    role "user"

    password 'password'
    password_confirmation 'password'

    factory :admin do
      role :admin
    end
  end
end
