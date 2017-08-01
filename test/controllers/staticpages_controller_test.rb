require 'test_helper'

class StaticpagesControllerTest < ActionDispatch::IntegrationTest
	def setup
		@title = "ruby on rails sample app"
	end
  test "should get home" do
    get staticpages_home_url
    assert_response :success
    assert_select "title" , "Home | #{@base_title}"
  end

  test "should get help" do
    get staticpages_help_url
    assert_response :success
     assert_select "title" , "Home | #{@base_title}"
  end
 test "should get about" do
    get staticpages_help_url
    assert_response :success
     assert_select "title" , "Home | #{@base_title}"
  end
end
