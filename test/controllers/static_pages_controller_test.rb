require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get root" do
    get root_path
    assert_response :success
    assert_template 'static_pages/top'
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_template 'static_pages/about'
  end

end
