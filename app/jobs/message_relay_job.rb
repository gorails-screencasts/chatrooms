class MessageRelayJob < ApplicationJob
  queue_as :default

  def perform(message)
    ActionCable.server.broadcast "chatrooms:#{message.chatroom.id}", {
      username: message.user.username,
      body: message.body,
      chatroom_id: message.chatroom.id
    }
  end
end
