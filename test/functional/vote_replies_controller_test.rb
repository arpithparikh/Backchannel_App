require 'test_helper'

class VoteRepliesControllerTest < ActionController::TestCase
  setup do
    @vote_reply = vote_replies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vote_replies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vote_reply" do
    assert_difference('VoteReply.count') do
      post :create, vote_reply: { vote_reply_count: @vote_reply.vote_reply_count }
    end

    assert_redirected_to vote_reply_path(assigns(:vote_reply))
  end

  test "should show vote_reply" do
    get :show, id: @vote_reply
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vote_reply
    assert_response :success
  end

  test "should update vote_reply" do
    put :update, id: @vote_reply, vote_reply: { vote_reply_count: @vote_reply.vote_reply_count }
    assert_redirected_to vote_reply_path(assigns(:vote_reply))
  end

  test "should destroy vote_reply" do
    assert_difference('VoteReply.count', -1) do
      delete :destroy, id: @vote_reply
    end

    assert_redirected_to vote_replies_path
  end
end
