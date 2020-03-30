require "application_system_test_case"

class IncompletePuzzlesTest < ApplicationSystemTestCase
  setup do
    @incomplete_puzzle = incomplete_puzzles(:one)
  end

  test "visiting the index" do
    visit incomplete_puzzles_url
    assert_selector "h1", text: "Incomplete Puzzles"
  end

  test "creating a Incomplete puzzle" do
    visit incomplete_puzzles_url
    click_on "New Incomplete Puzzle"

    fill_in "Incompletepuzzle", with: @incomplete_puzzle.incompletePuzzle
    fill_in "User", with: @incomplete_puzzle.user_id
    click_on "Create Incomplete puzzle"

    assert_text "Incomplete puzzle was successfully created"
    click_on "Back"
  end

  test "updating a Incomplete puzzle" do
    visit incomplete_puzzles_url
    click_on "Edit", match: :first

    fill_in "Incompletepuzzle", with: @incomplete_puzzle.incompletePuzzle
    fill_in "User", with: @incomplete_puzzle.user_id
    click_on "Update Incomplete puzzle"

    assert_text "Incomplete puzzle was successfully updated"
    click_on "Back"
  end

  test "destroying a Incomplete puzzle" do
    visit incomplete_puzzles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Incomplete puzzle was successfully destroyed"
  end
end
