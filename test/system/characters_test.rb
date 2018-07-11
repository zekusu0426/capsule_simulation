require "application_system_test_case"

class CharactersTest < ApplicationSystemTestCase
  setup do
    @character = characters(:one)
  end

  test "visiting the index" do
    visit characters_url
    assert_selector "h1", text: "Characters"
  end

  test "creating a Character" do
    visit characters_url
    click_on "New Character"

    fill_in "Band", with: @character.band_id
    fill_in "First Name", with: @character.first_name
    fill_in "First Name Kana", with: @character.first_name_kana
    fill_in "Introduction", with: @character.introduction
    fill_in "Last Name", with: @character.last_name
    fill_in "Last Name Kana", with: @character.last_name_kana
    click_on "Create Character"

    assert_text "Character was successfully created"
    click_on "Back"
  end

  test "updating a Character" do
    visit characters_url
    click_on "Edit", match: :first

    fill_in "Band", with: @character.band_id
    fill_in "First Name", with: @character.first_name
    fill_in "First Name Kana", with: @character.first_name_kana
    fill_in "Introduction", with: @character.introduction
    fill_in "Last Name", with: @character.last_name
    fill_in "Last Name Kana", with: @character.last_name_kana
    click_on "Update Character"

    assert_text "Character was successfully updated"
    click_on "Back"
  end

  test "destroying a Character" do
    visit characters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Character was successfully destroyed"
  end
end
