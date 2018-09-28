require "application_system_test_case"

class BicyclesTest < ApplicationSystemTestCase
  setup do
    @bicycle = bicycles(:one)
  end

  test "visiting the index" do
    visit bicycles_url
    assert_selector "h1", text: "Bicycles"
  end

  test "creating a Bicycle" do
    visit bicycles_url
    click_on "New Bicycle"

    fill_in "Bicycle Type", with: @bicycle.bicycle_type
    click_on "Create Bicycle"

    assert_text "Bicycle was successfully created"
    click_on "Back"
  end

  test "updating a Bicycle" do
    visit bicycles_url
    click_on "Edit", match: :first

    fill_in "Bicycle Type", with: @bicycle.bicycle_type
    click_on "Update Bicycle"

    assert_text "Bicycle was successfully updated"
    click_on "Back"
  end

  test "destroying a Bicycle" do
    visit bicycles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bicycle was successfully destroyed"
  end
end
