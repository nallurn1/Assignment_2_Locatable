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

    fill_in "Useremail", with: @user_profile.userEmail
    fill_in "Userid", with: @user_profile.userID
    fill_in "Userip", with: @user_profile.userIP
    fill_in "Userlocation", with: @user_profile.userLocation
    fill_in "Username", with: @user_profile.userName
    fill_in "Userphone", with: @user_profile.userPhone
    click_on "Create User profile"

    assert_text "User profile was successfully created"
    click_on "Back"
  end

  test "updating a User profile" do
    visit user_profiles_url
    click_on "Edit", match: :first

    fill_in "Useremail", with: @user_profile.userEmail
    fill_in "Userid", with: @user_profile.userID
    fill_in "Userip", with: @user_profile.userIP
    fill_in "Userlocation", with: @user_profile.userLocation
    fill_in "Username", with: @user_profile.userName
    fill_in "Userphone", with: @user_profile.userPhone
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
