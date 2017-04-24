require 'test_helper'

class VideoRequestCommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @video_request_comment = video_request_comments(:one)
  end

  test "should get index" do
    get video_request_comments_url
    assert_response :success
  end

  test "should get new" do
    get new_video_request_comment_url
    assert_response :success
  end

  test "should create video_request_comment" do
    assert_difference('VideoRequestComment.count') do
      post video_request_comments_url, params: { video_request_comment: {  } }
    end

    assert_redirected_to video_request_comment_url(VideoRequestComment.last)
  end

  test "should show video_request_comment" do
    get video_request_comment_url(@video_request_comment)
    assert_response :success
  end

  test "should get edit" do
    get edit_video_request_comment_url(@video_request_comment)
    assert_response :success
  end

  test "should update video_request_comment" do
    patch video_request_comment_url(@video_request_comment), params: { video_request_comment: {  } }
    assert_redirected_to video_request_comment_url(@video_request_comment)
  end

  test "should destroy video_request_comment" do
    assert_difference('VideoRequestComment.count', -1) do
      delete video_request_comment_url(@video_request_comment)
    end

    assert_redirected_to video_request_comments_url
  end
end
