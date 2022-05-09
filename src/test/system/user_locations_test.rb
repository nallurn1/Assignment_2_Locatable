require "application_system_test_case"

class UserLocationsTest < ApplicationSystemTestCase
  setup do
    @user_location = user_locations(:one)
  end

  test "visiting the index" do
    visit user_locations_url
    assert_selector "h1", text: "User Locations"
  end

  test "creating a User location" do
    visit user_locations_url
    click_on "New User Location"

    fill_in "User location city", with: @user_location.user_location_city
    fill_in "User location country", with: @user_location.user_location_country
    fill_in "User location state", with: @user_location.user_location_state
    fill_in "User location street", with: @user_location.user_location_street
    click_on "Create User location"

    assert_text "User location was successfully created"
    click_on "Back"
  end

  test "updating a User location" do
    visit user_locations_url
    click_on "Edit", match: :first

    fill_in "User location city", with: @user_location.user_location_city
    fill_in "User location country", with: @user_location.user_location_country
    fill_in "User location state", with: @user_location.user_location_state
    fill_in "User location street", with: @user_location.user_location_street
    click_on "Update User location"

    assert_text "User location was successfully updated"
    click_on "Back"
  end

  test "destroying a User location" do
    visit user_locations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User location was successfully destroyed"
  end
end
