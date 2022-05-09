require "application_system_test_case"

class UserProfilesTest < ApplicationSystemTestCase
  setup do
    @user_profile = user_profiles(:one)
  end

  test "visiting the index" do
    visit user_profiles_url
    assert_selector "h1", text: "User Profiles"
  end

  test "creating a User profile" do
    visit user_profiles_url
    click_on "New User Profile"

    fill_in "User address line1", with: @user_profile.user_address_line1
    fill_in "User address line2", with: @user_profile.user_address_line2
    fill_in "User city", with: @user_profile.user_city
    fill_in "User country", with: @user_profile.user_country
    fill_in "User email", with: @user_profile.user_email
    fill_in "User name", with: @user_profile.user_name
    fill_in "User phone", with: @user_profile.user_phone
    fill_in "User state", with: @user_profile.user_state
    fill_in "User zipcode", with: @user_profile.user_zipcode
    click_on "Create User profile"

    assert_text "User profile was successfully created"
    click_on "Back"
  end

  test "updating a User profile" do
    visit user_profiles_url
    click_on "Edit", match: :first

    fill_in "User address line1", with: @user_profile.user_address_line1
    fill_in "User address line2", with: @user_profile.user_address_line2
    fill_in "User city", with: @user_profile.user_city
    fill_in "User country", with: @user_profile.user_country
    fill_in "User email", with: @user_profile.user_email
    fill_in "User name", with: @user_profile.user_name
    fill_in "User phone", with: @user_profile.user_phone
    fill_in "User state", with: @user_profile.user_state
    fill_in "User zipcode", with: @user_profile.user_zipcode
    click_on "Update User profile"

    assert_text "User profile was successfully updated"
    click_on "Back"
  end

  test "destroying a User profile" do
    visit user_profiles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User profile was successfully destroyed"
  end
end
