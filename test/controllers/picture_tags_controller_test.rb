require 'test_helper'

class PictureTagsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get picture_tags_index_url
    assert_response :success
  end

  test "should get show" do
    get picture_tags_show_url
    assert_response :success
  end

  test "should get edit" do
    get picture_tags_edit_url
    assert_response :success
  end

  test "should get new" do
    get picture_tags_new_url
    assert_response :success
  end

end
