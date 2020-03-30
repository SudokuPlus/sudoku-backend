require 'test_helper'

class IncompletePuzzlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @incomplete_puzzle = incomplete_puzzles(:one)
  end

  test "should get index" do
    get incomplete_puzzles_url
    assert_response :success
  end

  test "should get new" do
    get new_incomplete_puzzle_url
    assert_response :success
  end

  test "should create incomplete_puzzle" do
    assert_difference('IncompletePuzzle.count') do
      post incomplete_puzzles_url, params: { incomplete_puzzle: { incompletePuzzle: @incomplete_puzzle.incompletePuzzle, user_id: @incomplete_puzzle.user_id } }
    end

    assert_redirected_to incomplete_puzzle_url(IncompletePuzzle.last)
  end

  test "should show incomplete_puzzle" do
    get incomplete_puzzle_url(@incomplete_puzzle)
    assert_response :success
  end

  test "should get edit" do
    get edit_incomplete_puzzle_url(@incomplete_puzzle)
    assert_response :success
  end

  test "should update incomplete_puzzle" do
    patch incomplete_puzzle_url(@incomplete_puzzle), params: { incomplete_puzzle: { incompletePuzzle: @incomplete_puzzle.incompletePuzzle, user_id: @incomplete_puzzle.user_id } }
    assert_redirected_to incomplete_puzzle_url(@incomplete_puzzle)
  end

  test "should destroy incomplete_puzzle" do
    assert_difference('IncompletePuzzle.count', -1) do
      delete incomplete_puzzle_url(@incomplete_puzzle)
    end

    assert_redirected_to incomplete_puzzles_url
  end
end
