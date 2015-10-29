FactoryGirl.define do
  factory :user do
    email 'factory@girl.com'
    password 'password'
    password_confirmation 'password'
  end
end
