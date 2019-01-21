require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest

  test "layout links" do

    # /
    get root_path
    assert_template 'static_pages/top'
    assert_select "a[href=?]", root_path, count: 1
    assert_select "a[href=?]", about_path, count: 1
    assert_select "title", build_title

    # /about
    get about_path
    assert_template 'static_pages/about'
    assert_select "title", build_title("このアプリについて")

  end

end
