require "test_helper"

class HtmlPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "Home | Company Feedback Application"
  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "Help | Company Feedback Application"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | Company Feedback Application"
  end

  test "should get contact page" do
    get contact_path
    assert_response :success
    assert_select "title", "Contact | Company Feedback Application"
  end

  test "should get signup page" do
    get signup_path
    assert_response :success
    assert_select "title", "Signup | Company Feedback Application"
  end
end
