require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase

  test "build title helper" do
    assert_equal build_title, "SimpleChat ver.2"
    assert_equal build_title(""), "SimpleChat ver.2"
    assert_equal build_title("Test"), "Test - SimpleChat ver.2"
  end

end
