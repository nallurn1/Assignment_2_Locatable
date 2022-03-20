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

    fill_in "Address1", with: @user_location.address1
    fill_in "Address2", with: @user_location.address2
    fill_in "City", with: @user_location.city
    fill_in "State", with: @user_location.state
    fill_in "Userid", with: @user_location.userID
    fill_in "Zipcode", with: @user_location.zipcode
    click_on "Create User location"

    assert_text "User location was successfully created"
    click_on "Back"
  end

  test "updating a User location" do
    visit user_locations_url
    click_on "Edit", match: :first

    fill_in "Address1", with: @user_location.address1
    fill_in "Address2", with: @user_location.address2
    fill_in "City", with: @user_location.city
    fill_in "State", with: @user_location.state
    fill_in "Userid", with: @user_location.userID
    fill_in "Zipcode", with: @user_location.zipcode
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
