class Message < ApplicationRecord
  belongs_to :chat_room
  belongs_to :user

  validates :chat_room_id, :user_id, presence: true
  validates :content, presence: true, length: {maximum: 250}
end
