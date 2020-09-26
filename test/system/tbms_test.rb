require "application_system_test_case"

class TbmsTest < ApplicationSystemTestCase
  setup do
    @tbm = tbms(:one)
  end

  test "visiting the index" do
    visit tbms_url
    assert_selector "h1", text: "Tbms"
  end

  test "creating a Tbm" do
    visit tbms_url
    click_on "New Tbm"

    fill_in "Add", with: @tbm.add
    fill_in "Kin", with: @tbm.kin
    fill_in "Name", with: @tbm.name
    click_on "Create Tbm"

    assert_text "Tbm was successfully created"
    click_on "Back"
  end

  test "updating a Tbm" do
    visit tbms_url
    click_on "Edit", match: :first

    fill_in "Add", with: @tbm.add
    fill_in "Kin", with: @tbm.kin
    fill_in "Name", with: @tbm.name
    click_on "Update Tbm"

    assert_text "Tbm was successfully updated"
    click_on "Back"
  end

  test "destroying a Tbm" do
    visit tbms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tbm was successfully destroyed"
  end
end
