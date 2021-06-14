require "test_helper"

class AttendedEventsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get attended_events_index_url
    assert_response :success
  end

  test "should get show" do
    get attended_events_show_url
    assert_response :success
  end
end
