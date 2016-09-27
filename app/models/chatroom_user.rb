class ChatroomUser < ApplicationRecord
  belongs_to :chatroom
  belongs_to :user

  before_create :set_last_read

  def set_last_read
    self.last_read_at = Time.zone.now
  end
end
