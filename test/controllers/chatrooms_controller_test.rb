require 'test_helper'

class ChatroomsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chatroom = chatrooms(:one)
  end

  test "should get index" do
    get chatrooms_url
    assert_response :success
  end

  test "should get new" do
    get new_chatroom_url
    assert_response :success
  end

  test "should create chatroom" do
    assert_difference('Chatroom.count') do
      post chatrooms_url, params: { chatroom: { name: @chatroom.name } }
    end

    assert_redirected_to chatroom_url(Chatroom.last)
  end

  test "should show chatroom" do
    get chatroom_url(@chatroom)
    assert_response :success
  end

  test "should get edit" do
    get edit_chatroom_url(@chatroom)
    assert_response :success
  end

  test "should update chatroom" do
    patch chatroom_url(@chatroom), params: { chatroom: { name: @chatroom.name } }
    assert_redirected_to chatroom_url(@chatroom)
  end

  test "should destroy chatroom" do
    assert_difference('Chatroom.count', -1) do
      delete chatroom_url(@chatroom)
    end

    assert_redirected_to chatrooms_url
  end
end
