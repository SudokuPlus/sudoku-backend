require "application_system_test_case"

class CompletePuzzlesTest < ApplicationSystemTestCase
  setup do
    @complete_puzzle = complete_puzzles(:one)
  end

  test "visiting the index" do
    visit complete_puzzles_url
    assert_selector "h1", text: "Complete Puzzles"
  end

  test "creating a Complete puzzle" do
    visit complete_puzzles_url
    click_on "New Complete Puzzle"

    fill_in "Completepuzzle", with: @complete_puzzle.completePuzzle
    fill_in "User", with: @complete_puzzle.user_id
    click_on "Create Complete puzzle"

    assert_text "Complete puzzle was successfully created"
    click_on "Back"
  end

  test "updating a Complete puzzle" do
    visit complete_puzzles_url
    click_on "Edit", match: :first

    fill_in "Completepuzzle", with: @complete_puzzle.completePuzzle
    fill_in "User", with: @complete_puzzle.user_id
    click_on "Update Complete puzzle"

    assert_text "Complete puzzle was successfully updated"
    click_on "Back"
  end

  test "destroying a Complete puzzle" do
    visit complete_puzzles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Complete puzzle was successfully destroyed"
  end
end
