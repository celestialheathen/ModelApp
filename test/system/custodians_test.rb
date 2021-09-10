require "application_system_test_case"

class CustodiansTest < ApplicationSystemTestCase
  setup do
    @custodian = custodians(:one)
  end

  test "visiting the index" do
    visit custodians_url
    assert_selector "h1", text: "Custodians"
  end

  test "creating a Custodian" do
    visit custodians_url
    click_on "New Custodian"

    fill_in "Name", with: @custodian.name
    fill_in "Specialty", with: @custodian.specialty
    click_on "Create Custodian"

    assert_text "Custodian was successfully created"
    click_on "Back"
  end

  test "updating a Custodian" do
    visit custodians_url
    click_on "Edit", match: :first

    fill_in "Name", with: @custodian.name
    fill_in "Specialty", with: @custodian.specialty
    click_on "Update Custodian"

    assert_text "Custodian was successfully updated"
    click_on "Back"
  end

  test "destroying a Custodian" do
    visit custodians_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Custodian was successfully destroyed"
  end
end
