require 'test_helper'

class VotePostsControllerTest < ActionController::TestCase
  setup do
    @vote_post = vote_posts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vote_posts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vote_post" do
    assert_difference('VotePost.count') do
      post :create, vote_post: { vote_post_count: @vote_post.vote_post_count }
    end

    assert_redirected_to vote_post_path(assigns(:vote_post))
  end

  test "should show vote_post" do
    get :show, id: @vote_post
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vote_post
    assert_response :success
  end

  test "should update vote_post" do
    put :update, id: @vote_post, vote_post: { vote_post_count: @vote_post.vote_post_count }
    assert_redirected_to vote_post_path(assigns(:vote_post))
  end

  test "should destroy vote_post" do
    assert_difference('VotePost.count', -1) do
      delete :destroy, id: @vote_post
    end

    assert_redirected_to vote_posts_path
  end
end
