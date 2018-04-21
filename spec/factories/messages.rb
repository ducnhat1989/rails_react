FactoryGirl.define do
  factory :message do
    chat_room_id 1
    user_id 1
    content "MyString"
  end
end
