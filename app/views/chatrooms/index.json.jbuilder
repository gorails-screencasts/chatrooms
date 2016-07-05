json.array!(@chatrooms) do |chatroom|
  json.extract! chatroom, :id, :name
  json.url chatroom_url(chatroom, format: :json)
end
