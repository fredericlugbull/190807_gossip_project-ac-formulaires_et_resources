require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get home_page" do
    get home_home_page_url
    assert_response :success
  end

  test "should get landing_page" do
    get home_landing_page_url
    assert_response :success
  end

  test "should get contact_show" do
    get home_contact_show_url
    assert_response :success
  end

  test "should get show_team" do
    get home_show_team_url
    assert_response :success
  end

end
