require "application_system_test_case"

class RecipientsTest < ApplicationSystemTestCase
  setup do
    @recipient = recipients(:one)
  end

  test "visiting the index" do
    visit recipients_url
    assert_selector "h1", text: "Recipients"
  end

  test "creating a Recipient" do
    visit recipients_url
    click_on "New Recipient"

    fill_in "Basic basket", with: @recipient.basic_basket
    fill_in "Family quantity", with: @recipient.family_quantity
    fill_in "Liter of water", with: @recipient.liter_of_water
    fill_in "Measure", with: @recipient.measure
    fill_in "Tile", with: @recipient.tile
    fill_in "Unit of measurement", with: @recipient.unit_of_measurement
    click_on "Create Recipient"

    assert_text "Recipient was successfully created"
    click_on "Back"
  end

  test "updating a Recipient" do
    visit recipients_url
    click_on "Edit", match: :first

    fill_in "Basic basket", with: @recipient.basic_basket
    fill_in "Family quantity", with: @recipient.family_quantity
    fill_in "Liter of water", with: @recipient.liter_of_water
    fill_in "Measure", with: @recipient.measure
    fill_in "Tile", with: @recipient.tile
    fill_in "Unit of measurement", with: @recipient.unit_of_measurement
    click_on "Update Recipient"

    assert_text "Recipient was successfully updated"
    click_on "Back"
  end

  test "destroying a Recipient" do
    visit recipients_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Recipient was successfully destroyed"
  end
end
