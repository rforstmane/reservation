require "application_system_test_case"

class CalendarsTest < ApplicationSystemTestCase
  setup do
    @calendar = calendars(:one)
  end

  test "visiting the index" do
    visit calendars_url
    assert_selector "h1", text: "Calendars"
  end

  test "creating a Calendar" do
    visit calendars_url
    click_on "New Calendar"

    fill_in "Bicycle", with: @calendar.bicycle_id
    fill_in "Employee", with: @calendar.employee_id
    fill_in "End Time", with: @calendar.end_time
    fill_in "Start Time", with: @calendar.start_time
    click_on "Create Calendar"

    assert_text "Calendar was successfully created"
    click_on "Back"
  end

  test "updating a Calendar" do
    visit calendars_url
    click_on "Edit", match: :first

    fill_in "Bicycle", with: @calendar.bicycle_id
    fill_in "Employee", with: @calendar.employee_id
    fill_in "End Time", with: @calendar.end_time
    fill_in "Start Time", with: @calendar.start_time
    click_on "Update Calendar"

    assert_text "Calendar was successfully updated"
    click_on "Back"
  end

  test "destroying a Calendar" do
    visit calendars_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Calendar was successfully destroyed"
  end
end
