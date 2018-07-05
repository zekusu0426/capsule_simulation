require 'test_helper'

class BangDreamCharactersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bang_dream_character = bang_dream_characters(:one)
  end

  test "should get index" do
    get bang_dream_characters_url
    assert_response :success
  end

  test "should get new" do
    get new_bang_dream_character_url
    assert_response :success
  end

  test "should create bang_dream_character" do
    assert_difference('BangDreamCharacter.count') do
      post bang_dream_characters_url, params: { bang_dream_character: { band_id: @bang_dream_character.band_id, name: @bang_dream_character.name } }
    end

    assert_redirected_to bang_dream_character_url(BangDreamCharacter.last)
  end

  test "should show bang_dream_character" do
    get bang_dream_character_url(@bang_dream_character)
    assert_response :success
  end

  test "should get edit" do
    get edit_bang_dream_character_url(@bang_dream_character)
    assert_response :success
  end

  test "should update bang_dream_character" do
    patch bang_dream_character_url(@bang_dream_character), params: { bang_dream_character: { band_id: @bang_dream_character.band_id, name: @bang_dream_character.name } }
    assert_redirected_to bang_dream_character_url(@bang_dream_character)
  end

  test "should destroy bang_dream_character" do
    assert_difference('BangDreamCharacter.count', -1) do
      delete bang_dream_character_url(@bang_dream_character)
    end

    assert_redirected_to bang_dream_characters_url
  end
end
