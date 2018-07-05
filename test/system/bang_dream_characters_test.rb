require "application_system_test_case"

class BangDreamCharactersTest < ApplicationSystemTestCase
  setup do
    @bang_dream_character = bang_dream_characters(:one)
  end

  test "visiting the index" do
    visit bang_dream_characters_url
    assert_selector "h1", text: "Bang Dream Characters"
  end

  test "creating a Bang dream character" do
    visit bang_dream_characters_url
    click_on "New Bang Dream Character"

    fill_in "Band", with: @bang_dream_character.band_id
    fill_in "Name", with: @bang_dream_character.name
    click_on "Create Bang dream character"

    assert_text "Bang dream character was successfully created"
    click_on "Back"
  end

  test "updating a Bang dream character" do
    visit bang_dream_characters_url
    click_on "Edit", match: :first

    fill_in "Band", with: @bang_dream_character.band_id
    fill_in "Name", with: @bang_dream_character.name
    click_on "Update Bang dream character"

    assert_text "Bang dream character was successfully updated"
    click_on "Back"
  end

  test "destroying a Bang dream character" do
    visit bang_dream_characters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bang dream character was successfully destroyed"
  end
end
