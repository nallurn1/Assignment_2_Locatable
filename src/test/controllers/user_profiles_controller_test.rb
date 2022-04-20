require 'test_helper'

class UserProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_profile = user_profiles(:one)
  end

  test "should get index" do
    get user_profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_user_profile_url
    assert_response :success
  end

  test "should create user_profile" do
    assert_difference('UserProfile.count') do
      post user_profiles_url, params: { user_profile: { user_address_line1: @user_profile.user_address_line1, user_address_line2: @user_profile.user_address_line2, user_city: @user_profile.user_city, user_country: @user_profile.user_country, user_email: @user_profile.user_email, user_name: @user_profile.user_name, user_phone: @user_profile.user_phone, user_state: @user_profile.user_state, user_zipcode: @user_profile.user_zipcode } }
    end

    assert_redirected_to user_profile_url(UserProfile.last)
  end

  test "should show user_profile" do
    get user_profile_url(@user_profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_profile_url(@user_profile)
    assert_response :success
  end

  test "should update user_profile" do
    patch user_profile_url(@user_profile), params: { user_profile: { user_address_line1: @user_profile.user_address_line1, user_address_line2: @user_profile.user_address_line2, user_city: @user_profile.user_city, user_country: @user_profile.user_country, user_email: @user_profile.user_email, user_name: @user_profile.user_name, user_phone: @user_profile.user_phone, user_state: @user_profile.user_state, user_zipcode: @user_profile.user_zipcode } }
    assert_redirected_to user_profile_url(@user_profile)
  end

  test "should destroy user_profile" do
    assert_difference('UserProfile.count', -1) do
      delete user_profile_url(@user_profile)
    end

    assert_redirected_to user_profiles_url
  end
end
