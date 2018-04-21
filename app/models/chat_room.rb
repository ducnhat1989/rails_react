class ChatRoom < ApplicationRecord
  has_many :messages

  validates :topic, presence: true, length: {maximum: 50}
end
