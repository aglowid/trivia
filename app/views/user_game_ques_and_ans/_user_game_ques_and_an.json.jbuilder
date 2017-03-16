json.extract! user_game_ques_and_an, :id, :user_id, :game_id, :question_id, :answer, :is_correct_ans, :created_at, :updated_at
json.url user_game_ques_and_an_url(user_game_ques_and_an, format: :json)
