require 'test_helper'

class UserGameQuesAndAnsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_game_ques_and_an = user_game_ques_and_ans(:one)
  end

  test "should get index" do
    get user_game_ques_and_ans_url
    assert_response :success
  end

  test "should get new" do
    get new_user_game_ques_and_an_url
    assert_response :success
  end

  test "should create user_game_ques_and_an" do
    assert_difference('UserGameQuesAndAn.count') do
      post user_game_ques_and_ans_url, params: { user_game_ques_and_an: { answer: @user_game_ques_and_an.answer, game_id: @user_game_ques_and_an.game_id, is_correct_ans: @user_game_ques_and_an.is_correct_ans, question_id: @user_game_ques_and_an.question_id, user_id: @user_game_ques_and_an.user_id } }
    end

    assert_redirected_to user_game_ques_and_an_url(UserGameQuesAndAn.last)
  end

  test "should show user_game_ques_and_an" do
    get user_game_ques_and_an_url(@user_game_ques_and_an)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_game_ques_and_an_url(@user_game_ques_and_an)
    assert_response :success
  end

  test "should update user_game_ques_and_an" do
    patch user_game_ques_and_an_url(@user_game_ques_and_an), params: { user_game_ques_and_an: { answer: @user_game_ques_and_an.answer, game_id: @user_game_ques_and_an.game_id, is_correct_ans: @user_game_ques_and_an.is_correct_ans, question_id: @user_game_ques_and_an.question_id, user_id: @user_game_ques_and_an.user_id } }
    assert_redirected_to user_game_ques_and_an_url(@user_game_ques_and_an)
  end

  test "should destroy user_game_ques_and_an" do
    assert_difference('UserGameQuesAndAn.count', -1) do
      delete user_game_ques_and_an_url(@user_game_ques_and_an)
    end

    assert_redirected_to user_game_ques_and_ans_url
  end
end
