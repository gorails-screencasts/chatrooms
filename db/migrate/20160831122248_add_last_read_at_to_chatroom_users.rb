class AddLastReadAtToChatroomUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :chatroom_users, :last_read_at, :datetime
  end
end
