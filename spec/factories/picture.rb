include ActionDispatch::TestProcess

FactoryGirl.define do
  factory :picture do
    description "Funky Monkey"
    image { fixture_file_upload(Rails.root.join('spec', 'images', 'monkey.png'), 'image/png') }
    user_id 1
  end
end
