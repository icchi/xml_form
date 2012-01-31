require 'test_helper'

class XmlFormControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get forming_xml" do
    get :forming_xml
    assert_response :success
  end

end
