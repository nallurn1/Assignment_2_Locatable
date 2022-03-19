require "application_system_test_case"

class ContactsTest < ApplicationSystemTestCase
  setup do
    @contact = contacts(:one)
  end

  test "visiting the index" do
    visit contacts_url
    assert_selector "h1", text: "Contacts"
  end

  test "creating a Contact" do
    visit contacts_url
    click_on "New Contact"

    fill_in "Contactemail", with: @contact.contactEmail
    fill_in "Contactid", with: @contact.contactID
    fill_in "Contactname", with: @contact.contactName
    fill_in "Contactphone", with: @contact.contactPhone
    fill_in "Contactrelation", with: @contact.contactRelation
    fill_in "Userid", with: @contact.userID
    click_on "Create Contact"

    assert_text "Contact was successfully created"
    click_on "Back"
  end

  test "updating a Contact" do
    visit contacts_url
    click_on "Edit", match: :first

    fill_in "Contactemail", with: @contact.contactEmail
    fill_in "Contactid", with: @contact.contactID
    fill_in "Contactname", with: @contact.contactName
    fill_in "Contactphone", with: @contact.contactPhone
    fill_in "Contactrelation", with: @contact.contactRelation
    fill_in "Userid", with: @contact.userID
    click_on "Update Contact"

    assert_text "Contact was successfully updated"
    click_on "Back"
  end

  test "destroying a Contact" do
    visit contacts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Contact was successfully destroyed"
  end
end
