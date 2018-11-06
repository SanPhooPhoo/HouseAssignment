require "application_system_test_case"

class HousesTest < ApplicationSystemTestCase
  setup do
    @house = houses(:one)
  end

  test "visiting the index" do
    visit houses_url
    assert_selector "h1", text: "Houses"
  end

  test "creating a House" do
    visit houses_url
    click_on "New House"

    fill_in "Address", with: @house.Address
    fill_in "Owner Name", with: @house.Owner_Name
    fill_in "Price", with: @house.Price
    fill_in "Number Of Rooms", with: @house.number_of_rooms
    click_on "Create House"

    assert_text "House was successfully created"
    click_on "Back"
  end

  test "updating a House" do
    visit houses_url
    click_on "Edit", match: :first

    fill_in "Address", with: @house.Address
    fill_in "Owner Name", with: @house.Owner_Name
    fill_in "Price", with: @house.Price
    fill_in "Number Of Rooms", with: @house.number_of_rooms
    click_on "Update House"

    assert_text "House was successfully updated"
    click_on "Back"
  end

  test "destroying a House" do
    visit houses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "House was successfully destroyed"
  end
end
