require 'test_helper'

class DraftControllerTest < ActionController::TestCase
  test "should get draft" do
    get :draft
    assert_response :success
  end

end
