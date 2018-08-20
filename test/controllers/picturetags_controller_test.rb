require 'test_helper'

class PicturetagsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get picturetags_index_url
    assert_response :success
  end

  test "should get show" do
    get picturetags_show_url
    assert_response :success
  end

  test "should get edit" do
    get picturetags_edit_url
    assert_response :success
  end

  test "should get new" do
    get picturetags_new_url
    assert_response :success
  end

end
