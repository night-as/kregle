require "test_helper"

class BowlingBallsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bowling_ball = bowling_balls(:one)
  end

  test "should get index" do
    get bowling_balls_url
    assert_response :success
  end

  test "should get new" do
    get new_bowling_ball_url
    assert_response :success
  end

  test "should create bowling_ball" do
    assert_difference("BowlingBall.count") do
      post bowling_balls_url, params: { bowling_ball: { is_avalable: @bowling_ball.is_avalable, size: @bowling_ball.size } }
    end

    assert_redirected_to bowling_ball_url(BowlingBall.last)
  end

  test "should show bowling_ball" do
    get bowling_ball_url(@bowling_ball)
    assert_response :success
  end

  test "should get edit" do
    get edit_bowling_ball_url(@bowling_ball)
    assert_response :success
  end

  test "should update bowling_ball" do
    patch bowling_ball_url(@bowling_ball), params: { bowling_ball: { is_avalable: @bowling_ball.is_avalable, size: @bowling_ball.size } }
    assert_redirected_to bowling_ball_url(@bowling_ball)
  end

  test "should destroy bowling_ball" do
    assert_difference("BowlingBall.count", -1) do
      delete bowling_ball_url(@bowling_ball)
    end

    assert_redirected_to bowling_balls_url
  end
end
