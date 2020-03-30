require 'test_helper'

class CompletePuzzlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @complete_puzzle = complete_puzzles(:one)
  end

  test "should get index" do
    get complete_puzzles_url
    assert_response :success
  end

  test "should get new" do
    get new_complete_puzzle_url
    assert_response :success
  end

  test "should create complete_puzzle" do
    assert_difference('CompletePuzzle.count') do
      post complete_puzzles_url, params: { complete_puzzle: { completePuzzle: @complete_puzzle.completePuzzle, user_id: @complete_puzzle.user_id } }
    end

    assert_redirected_to complete_puzzle_url(CompletePuzzle.last)
  end

  test "should show complete_puzzle" do
    get complete_puzzle_url(@complete_puzzle)
    assert_response :success
  end

  test "should get edit" do
    get edit_complete_puzzle_url(@complete_puzzle)
    assert_response :success
  end

  test "should update complete_puzzle" do
    patch complete_puzzle_url(@complete_puzzle), params: { complete_puzzle: { completePuzzle: @complete_puzzle.completePuzzle, user_id: @complete_puzzle.user_id } }
    assert_redirected_to complete_puzzle_url(@complete_puzzle)
  end

  test "should destroy complete_puzzle" do
    assert_difference('CompletePuzzle.count', -1) do
      delete complete_puzzle_url(@complete_puzzle)
    end

    assert_redirected_to complete_puzzles_url
  end
end
