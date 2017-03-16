json.extract! game, :id, :start_time, :end_time, :duration, :created_at, :updated_at
json.url game_url(game, format: :json)
