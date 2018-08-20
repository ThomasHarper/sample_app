require 'test_helper'

class ApplicationControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_title = "Ruby on Rails Tutorial Sample App"
  end

  test "should get homepage as root route" do
    get '/'
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end
end
