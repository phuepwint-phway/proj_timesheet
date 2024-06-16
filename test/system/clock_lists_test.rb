require "application_system_test_case"

class ClockListsTest < ApplicationSystemTestCase
  setup do
    @clock_list = clock_lists(:one)
  end

  test "visiting the index" do
    visit clock_lists_url
    assert_selector "h1", text: "Clock lists"
  end

  test "should create clock list" do
    visit clock_lists_url
    click_on "New clock list"

    click_on "Create Clock list"

    assert_text "Clock list was successfully created"
    click_on "Back"
  end

  test "should update Clock list" do
    visit clock_list_url(@clock_list)
    click_on "Edit this clock list", match: :first

    click_on "Update Clock list"

    assert_text "Clock list was successfully updated"
    click_on "Back"
  end

  test "should destroy Clock list" do
    visit clock_list_url(@clock_list)
    click_on "Destroy this clock list", match: :first

    assert_text "Clock list was successfully destroyed"
  end
end
