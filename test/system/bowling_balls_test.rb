require "application_system_test_case"

class BowlingBallsTest < ApplicationSystemTestCase
  setup do
    @bowling_ball = bowling_balls(:one)
  end

  test "visiting the index" do
    visit bowling_balls_url
    assert_selector "h1", text: "Bowling balls"
  end

  test "should create bowling ball" do
    visit bowling_balls_url
    click_on "New bowling ball"

    check "Is avalable" if @bowling_ball.is_avalable
    fill_in "Size", with: @bowling_ball.size
    click_on "Create Bowling ball"

    assert_text "Bowling ball was successfully created"
    click_on "Back"
  end

  test "should update Bowling ball" do
    visit bowling_ball_url(@bowling_ball)
    click_on "Edit this bowling ball", match: :first

    check "Is avalable" if @bowling_ball.is_avalable
    fill_in "Size", with: @bowling_ball.size
    click_on "Update Bowling ball"

    assert_text "Bowling ball was successfully updated"
    click_on "Back"
  end

  test "should destroy Bowling ball" do
    visit bowling_ball_url(@bowling_ball)
    click_on "Destroy this bowling ball", match: :first

    assert_text "Bowling ball was successfully destroyed"
  end
end
