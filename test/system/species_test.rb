require "application_system_test_case"

class SpeciesTest < ApplicationSystemTestCase
  setup do
    @species = species(:one)
  end

  test "visiting the index" do
    visit species_url
    assert_selector "h1", text: "Species"
  end

  test "should create species" do
    visit species_url
    click_on "New species"

    fill_in "Average lifespan", with: @species.average_lifespan
    fill_in "Language", with: @species.language
    fill_in "Name", with: @species.name
    fill_in "Planet", with: @species.planet_id
    click_on "Create Species"

    assert_text "Species was successfully created"
    click_on "Back"
  end

  test "should update Species" do
    visit species_url(@species)
    click_on "Edit this species", match: :first

    fill_in "Average lifespan", with: @species.average_lifespan
    fill_in "Language", with: @species.language
    fill_in "Name", with: @species.name
    fill_in "Planet", with: @species.planet_id
    click_on "Update Species"

    assert_text "Species was successfully updated"
    click_on "Back"
  end

  test "should destroy Species" do
    visit species_url(@species)
    click_on "Destroy this species", match: :first

    assert_text "Species was successfully destroyed"
  end
end
