json.extract! question, :id, :name, :option_1, :option_2, :option_3, :option_4, :correct_ans, :created_at, :updated_at
json.url question_url(question, format: :json)
