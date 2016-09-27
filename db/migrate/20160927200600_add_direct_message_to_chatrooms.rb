class AddDirectMessageToChatrooms < ActiveRecord::Migration[5.0]
  def change
    add_column :chatrooms, :direct_message, :boolean, default: false
  end
end
