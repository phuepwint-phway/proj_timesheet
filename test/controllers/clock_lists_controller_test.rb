require "test_helper"

class ClockListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @clock_list = clock_lists(:one)
  end

  test "should get index" do
    get clock_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_clock_list_url
    assert_response :success
  end

  test "should create clock_list" do
    assert_difference("ClockList.count") do
      post clock_lists_url, params: { clock_list: {  } }
    end

    assert_redirected_to clock_list_url(ClockList.last)
  end

  test "should show clock_list" do
    get clock_list_url(@clock_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_clock_list_url(@clock_list)
    assert_response :success
  end

  test "should update clock_list" do
    patch clock_list_url(@clock_list), params: { clock_list: {  } }
    assert_redirected_to clock_list_url(@clock_list)
  end

  test "should destroy clock_list" do
    assert_difference("ClockList.count", -1) do
      delete clock_list_url(@clock_list)
    end

    assert_redirected_to clock_lists_url
  end
end
