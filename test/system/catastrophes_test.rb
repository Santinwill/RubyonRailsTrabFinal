require "application_system_test_case"

class CatastrophesTest < ApplicationSystemTestCase
  setup do
    @catastrophe = catastrophes(:one)
  end

  test "visiting the index" do
    visit catastrophes_url
    assert_selector "h1", text: "Catastrophes"
  end

  test "creating a Catastrophe" do
    visit catastrophes_url
    click_on "New Catastrophe"

    fill_in "Catastrophe code", with: @catastrophe.catastrophe_code
    fill_in "Degree of emergency", with: @catastrophe.degree_of_emergency
    fill_in "Name", with: @catastrophe.name
    click_on "Create Catastrophe"

    assert_text "Catastrophe was successfully created"
    click_on "Back"
  end

  test "updating a Catastrophe" do
    visit catastrophes_url
    click_on "Edit", match: :first

    fill_in "Catastrophe code", with: @catastrophe.catastrophe_code
    fill_in "Degree of emergency", with: @catastrophe.degree_of_emergency
    fill_in "Name", with: @catastrophe.name
    click_on "Update Catastrophe"

    assert_text "Catastrophe was successfully updated"
    click_on "Back"
  end

  test "destroying a Catastrophe" do
    visit catastrophes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Catastrophe was successfully destroyed"
  end
end
