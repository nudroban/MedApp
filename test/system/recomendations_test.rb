require "application_system_test_case"

class RecomendationsTest < ApplicationSystemTestCase
  setup do
    @recomendation = recomendations(:one)
  end

  test "visiting the index" do
    visit recomendations_url
    assert_selector "h1", text: "Recomendations"
  end

  test "should create recomendation" do
    visit recomendations_url
    click_on "New recomendation"

    fill_in "Body", with: @recomendation.body
    fill_in "Title", with: @recomendation.title
    click_on "Create Recomendation"

    assert_text "Recomendation was successfully created"
    click_on "Back"
  end

  test "should update Recomendation" do
    visit recomendation_url(@recomendation)
    click_on "Edit this recomendation", match: :first

    fill_in "Body", with: @recomendation.body
    fill_in "Title", with: @recomendation.title
    click_on "Update Recomendation"

    assert_text "Recomendation was successfully updated"
    click_on "Back"
  end

  test "should destroy Recomendation" do
    visit recomendation_url(@recomendation)
    click_on "Destroy this recomendation", match: :first

    assert_text "Recomendation was successfully destroyed"
  end
end
