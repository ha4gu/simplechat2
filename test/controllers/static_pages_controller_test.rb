require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "SimpleChat ver.2"
  end

  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "#{@base_title}"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "このアプリについて - #{@base_title}"
  end

end
