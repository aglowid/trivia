json.extract! user_game, :id, :user_id, :game_id, :created_at, :updated_at
json.url user_game_url(user_game, format: :json)
